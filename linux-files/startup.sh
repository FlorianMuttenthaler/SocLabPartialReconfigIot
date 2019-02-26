echo "++ Adding partial reconfiguration device node"
mknod /dev/xdevcfg c 259 0
echo "1" > /sys/devices/axi.0/f8007000.devcfg/is_partial_bitstream

echo "++ Loading myled Module"
insmod /mnt/sd/myled.ko
echo "++ Loading blake2b Module"
insmod /mnt/sd/blake2b.ko
echo "++ Loading image_filter Module"
insmod /mnt/sd/image_filter.ko
