# ScaleDefrag: Design and Implementation of a Scalable File Defragmentation Tool for Flash-based SSDs

**ScaleDefrag** is a scalable file defragmentation tool for flash-based SSDs.

This repository contains the implementation of the following paper:

**ScaleDefrag: Design and Implementation of a Scalable File Defragmentation Tool for Flash-based SSDs**,  
Sangjin Lee, Sunggon Kim, and Yongseok Son,  
PLOS ONE.  
https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0348520

ScaleDefrag extends our previous conference paper:

**An Efficient and Parallel File Defragment Scheme for SSDs**,  
Guangyu Zhu, Jeongeun Lee, Yongseok Son,
In Proceedings of 36th ACM/SIGAPP Symposium on Applied Computing, SAC '22.  
https://dl.acm.org/doi/abs/10.1145/3477314.3507225

## Overview

ScaleDefrag is implemented based on `e4defrag` and consists of both user-space and kernel-space components.

The user-space component is implemented in:

```text
e2fsprogs/misc/e4defrag.c
```

The kernel-space component is mainly implemented by modifying the `move_extent.c` logic in `ext4`.

Since `ext4` is the default file system in many Linux distributions, we forked the `ext4` source code and renamed it `pxt4` for ease of use and testing.
Users can build the `pxt4` kernel module and mount it on the target disk to evaluate ScaleDefrag.

ScaleDefrag supports parallel file defragmentation using an asynchronous I/O approach.
