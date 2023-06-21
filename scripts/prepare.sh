#!/bin/sh

sudo umount /mnt/defrag &&
#sudo mkfs.ext4 -F /dev/sdb &&
sudo mkfs.ext4 -E lazy_itable_init=0,lazy_journal_init=0 -F /dev/sdb &&
sudo mount /dev/sdb /mnt/defrag &&

#sudo mkfs.ext4 -F /dev/nvme0n1 &&
#sudo mkfs.ext4 -E lazy_itable_init=0,lazy_journal_init=0 -F /dev/nvme0n1 &&
#sudo mount /dev/nvme0n1 /mnt/defrag &&
		
sudo filebench -f $1
#sudo ../ffsb-6.0-rc2/build/ffsb my_prof
