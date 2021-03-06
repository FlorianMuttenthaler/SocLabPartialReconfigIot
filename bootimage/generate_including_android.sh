function pretty_header() {
        msg="# $* #"
        edge=$(echo "$msg" | sed 's/./#/g')
        echo "$edge"
        echo "$msg"
        echo "$edge"
}

#sh generate_without_android.sh

cd ..

if [ ! -f repo ]; then

	pretty_header "Fetching repo"

	curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > repo

	chmod +x repo

fi

export PATH=$PATH:`pwd`

if [ ! -d android ]; then

	pretty_header "Fetching android source"

	mkdir android

	cd android

	repo init -u git://github.com/aimeemikaelac/xilinx-android-manifest.git -b android-zynq-1.0

	repo sync

	cd ..

fi

pretty_header "Making android"

cd android

. build/envsetup.sh

lunch generic-eng

make -j32

make -f Makefile.zynq

cp root.img ../bootimage

cd ../bootimage

mkdir -p root
sudo mount root.img -o loop,rw,sync root
sudo mkdir -p root/system/usr/idc/
sudo cp ../linux-files/touchscreen_config.idc root/system/usr/idc/Vendor_222a_Product_0001.idc
#sudo cp ../linux-files/touchscreen_config.idc "root/system/usr/idc/ILITEK ILITEK-TP.idc"
sudo chmod 664 root/system/usr/idc/*.idc
sudo cp ../android/external/tslib/etc/ts.conf root/system/etc
sleep 1
sudo umount root
sleep 1
rmdir root

cd ..

cp linux-files/startup_android.sh bootimage
