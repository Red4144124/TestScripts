import fcntl
import os
import struct

device_path = '/dev/MMC5603X'
device_fd = os.open(device_path, os.O_RDWR)

ioctl_code = 0x40048355
ioctl_arg = 1

ioctl_data = struct.pack('I', ioctl_arg)

try:
    fcntl.ioctl(device_fd, ioctl_code, ioctl_data)
    print("Ioctl executed successfully")
except IOError as e:
    print(f"Ioctl failed: {e}")

os.close(device_fd)
