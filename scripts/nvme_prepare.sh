#!/bin/sh

sudo umount /mnt/defrag &&
sudo mkfs.ext4 -F /dev/nvme0n1 &&
sudo mount /dev/nvme0n1 /mnt/defrag &&
sudo filebench -f $1
