echo "+++ Fetching submodules"
cd ..
git submodule update --init --recursive

echo "+++ Build Linux Kernel"

#copy kernel config
cp linux-files/kernel_config linux-digilent/.config

#setup environment
export CCOMPILER=arm-xilinx-linux-gnueabi-gcc
export ARCH=arm
export CROSS_COMPILE=arm-xilinx-linux-gnueabi-
export PATH=$PATH:/opt/Xilinx/14.7/ISE_DS/EDK/gnu/arm/lin/bin/

#build
cd linux-digilent
make -j8
cp arch/arm/boot/zImage ../bootimage/

echo "+++ Compiling device tree"
./scripts/dtc/dtc -I dts -O dtb -o ../bootimage/devicetree_ramdisk.dtb ../linux-files/devicetree.dts

cd ..

echo "+++ Compiling kernel modules for PL devices"
for driver in ./drivers/*/
do
	cd $driver
	make
	cd ../..
done
cp ./drivers/*/*.ko bootimage

echo "+++ Generating Bitstream"
cd hardware_design
make -f system.make bits
make -f system.make exporttosdk
cd ..

echo "+++ Building u-boot"
cd u-boot-digilent
make CROSS_COMPILE=arm-xilinx-linux-gnueabi- zynq_zed_config
make CROSS_COMPILE=arm-xilinx-linux-gnueabi-
mv u-boot u-boot.elf
cd ..

echo "+++ Building FSBL"
cd hardware_design/SDK/SDK_Export/FSBL/Debug
make

cd ../../../../../

cd hardware_design

echo "+++ Generating BOOT.BIN"
bootgen -image boot.bif -o i ../bootimage/BOOT.BIN

if [ ! -f repo ]; then

	echo "+++ Fetching repo"

	curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > repo

	chmod +x repo

fi

export PATH=$PATH:`pwd`

if [ ! -d android ]; then

	echo "+++ Fetching android source"

	mkdir android

	cd android

	repo init -u git://github.com/aimeemikaelac/xilinx-android-manifest.git -b android-zynq-1.0

	repo sync

	cd ..

fi

echo "+++ Making android"

cd android

. build/envsetup.sh

lunch generic-eng

make -j32

make -f Makefile.zynq

cp root.img ../bootimage
cd ..

cp linux-files/startup.sh bootimage
cp linux-files/ramdisk8M.image.gz bootimage
