#!/bin/sh

iostat -xmt 1 /dev/nvme0n1 | awk '/nvme0n1/ {printf "%s, %s, %s, %s, %s\n", $4, $5, $10, $11, $12; fflush(stdout) }' > $1
