#!/bin/bash


for j in $(seq 1 3)
do
    for i in $(seq 1 8)
    do 
        gpioset $(gpiofind GPIO$i)=1
        sleep 0.$i
        gpioset $(gpiofind GPIO$i)=0
    done
done
