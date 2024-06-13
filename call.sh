#!/bin/sh

echo Calling $1

echo -ne "atd"$1";\r" > /dev/ttyUSB5
