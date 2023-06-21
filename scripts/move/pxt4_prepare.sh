#!/bin/sh

sudo umount /mnt/defrag &&
#sudo mkfs.ext4 -F /dev/sdb &&
#sudo mount -t pxt4 /dev/sdb /mnt/defrag &&
sudo mkfs.ext4 -F /dev/nvme0n1 &&
sudo mount -t pxt4 /dev/nvme0n1 /mnt/defrag &&
sudo filebench -f $1
#sudo ../ffsb-6.0-rc2/build/ffsb my_prof
