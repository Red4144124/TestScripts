#!/bin/bash

kernel_version=$(uname -r)

echo "Kernel version": $kernel_version

if [[ $kernel_version == 4.19* ]]; then
	echo "TEST PASSED"
else
	echo "NOT PASSED"
fi
echo
if sensors | grep -q "mcom03-isa-0000"; then
    echo "ID CPU: 1892BA018"
else
    echo "MCOM03 is not founded."
fi
echo "RAM"
free
echo 
echo "QSPI"
mtd_info=$(cat /proc/mtd)

size_hex=$(echo "$mtd_info" | awk '/mtd0:/ {print $2}')
erasesize_hex=$(echo "$mtd_info" | awk '/mtd0:/ {print $3}')

size_dec=$((16#$size_hex))
erasesize_dec=$((16#$erasesize_hex))

echo "Size: $size_dec"
echo "Erasize: $erasesize_dec"
echo
echo "TEST PASSED"
echo
lsblk
echo
echo "All Disk Devices"
