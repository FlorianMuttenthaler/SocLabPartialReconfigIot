function pretty_header() {
        msg="# $* #"
        edge=$(echo "$msg" | sed 's/./#/g')
        echo "$edge"
        echo "$msg"
        echo "$edge"
}

pretty_header "Fetching Submodules"

cd ..
git submodule update --init --recursive

pretty_header "Build Linux Kernel"

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

pretty_header "Compiling device tree"
./scripts/dtc/dtc -I dts -O dtb -o ../bootimage/devicetree.dtb ../linux-files/devicetree.dts

cd ..

pretty_header "Compiling kernel modules for PL devices"
for driver in ./drivers/*/
do
	cd $driver
	make
	cd ../..
done
cp ./drivers/*/*.ko bootimage

pretty_header "Generating Bitstream"
cd hardware_design
make -f system.make bits
make -f system.make exporttosdk
cd ..

pretty_header "Building u-boot"
cd u-boot-digilent
make CROSS_COMPILE=arm-xilinx-linux-gnueabi- zynq_zed_config
make CROSS_COMPILE=arm-xilinx-linux-gnueabi-
cp u-boot ../bootimage/u-boot.elf
cd ..

pretty_header "Building FSBL"
cd hardware_design/SDK/SDK_Export/FSBL/Debug
make

cd ../../../../../

cd hardware_design

pretty_header "Generating BOOT.BIN"
bootgen -image boot.bif -w -o i ../bootimage/BOOT.BIN

rm ../bootimage/u-boot.elf

cd ..

cp linux-files/startup.sh bootimage
cp linux-files/ramdisk8M.image.gz bootimage
