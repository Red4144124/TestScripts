#!/bin/bash
python3 ./Device\ Test\ USB.py
mount /dev/mmcblk0p1 /mnt/
python3 ./Device\ Test\ USB.py
umount /dev/mmcblk0p1
