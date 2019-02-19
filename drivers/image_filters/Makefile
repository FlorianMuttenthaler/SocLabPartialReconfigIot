obj-m := image_filter.o

all:
	make -C ../../linux-digilent/ M=${PWD} modules ARCH=arm CROSS_COMPILE=arm-xilinx-linux-gnueabi-

clean:
	make -C ../../linux-digilent/ M=${PWD} clean
