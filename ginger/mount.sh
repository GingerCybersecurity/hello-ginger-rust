#!/bin/bash

qemu-nbd -f raw --connect /dev/nbd4 ../target/disk_image.raw
qemu-nbd -f raw --connect /dev/nbd5 ../target/disk_deployment.raw
qemu-nbd -f raw --connect /dev/nbd6 ../target/disk_data.raw

sleep 1

mount /dev/nbd4p2 /mnt
mount /dev/nbd4p1 /mnt/boot/efi
mount /dev/nbd5 /mnt/usr
mount /dev/nbd6 /mnt/var
