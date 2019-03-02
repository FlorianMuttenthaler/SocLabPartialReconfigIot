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

pretty_header "Generating Netlists"
cd hardware_design
make -f system.make netlist

# generate netlists for filter logic
cd pcores/simple_filter_v1_00_a/hdl/vhdl
xst -ifn synth_filter_logic.xst

cd ../../../..

pretty_header "Generating Bitstreams"
planAhead -mode tcl -source planAhead.tcl

# convert bitstreams from .bit to .bin
promgen -b -w -p bin -data_width 32 -u 0 ./planAhead/partial_reconfiguration/partial_reconfiguration.config_1/config_1_simple_filter_0_simple_filter_0_USER_LOGIC_I_filter_logic_0_red_filter_partial.bit -o ./planAhead/generated_Bitstreams/red_filter.bin
promgen -b -w -p bin -data_width 32 -u 0 ./planAhead/partial_reconfiguration/partial_reconfiguration.config_2/config_2_simple_filter_0_simple_filter_0_USER_LOGIC_I_filter_logic_0_green_filter_partial.bit -o ./planAhead/generated_Bitstreams/green_filter.bin
promgen -b -w -p bin -data_width 32 -u 0 ./planAhead/partial_reconfiguration/partial_reconfiguration.config_3/config_3_simple_filter_0_simple_filter_0_USER_LOGIC_I_filter_logic_0_blue_filter_partial.bit -o ./planAhead/generated_Bitstreams/blue_filter.bin

cp ./planAhead/generated_Bitstreams/*.bin ../bootimage/

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
# default red_filter is active
bootgen -image boot.bif -w -o i ../bootimage/BOOT.BIN

rm ../bootimage/u-boot.elf

cd ..

cp linux-files/startup.sh bootimage
cp linux-files/ramdisk8M.image.gz bootimage
