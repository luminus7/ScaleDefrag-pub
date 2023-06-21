# An Efficient and Parallel File Defragment Scheme for SSDs

Guangyu Zhu, Sangjin Lee, Yongseok Son, In Proceedings of 36th ACM/SIGAPP
Symposium on Applied Computing (SAC'22)

We implemented our scheme based e4defrag. There are user space part and kernel
space part.

The user space part is in `e2fsprogs/misc/e4defrag.c`.
The kernel space implementation is focus on `move_extent.c` of ext4.
Because ext4 is the default filesystem for many distro, to ease the use, we
duplicate the ext4 source code and name it pxt4. You can build pxt4 module and
mount it on the disk that you want to test the defragmentation.
