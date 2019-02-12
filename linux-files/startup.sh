echo "++ Loading myled Module"
insmod /mnt/sd/myled.ko
echo "++ Loading blake2b Module"
insmod /mnt/sd/blake2b.ko

echo "++ Preparing for Android" 
mkdir /mnt/root 
mount -o loop /mnt/sd/root.img /mnt/root/ 
mount -t proc proc /mnt/root/proc 
mount -t sysfs sys /mnt/root/sys 
mount -t tmpfs tmp /mnt/root/data 
mkdir -p /mnt/root/tmp/sd 
mount /mnt/sd /mnt/root/tmp/sd 
echo "++ Starting Android" 
chroot /mnt/root /init 
