#!/bin/bash

umount /mnt/var
umount /mnt/usr
umount /mnt/boot/efi
umount /mnt

qemu-nbd --disconnect /dev/nbd6
qemu-nbd --disconnect /dev/nbd5
qemu-nbd --disconnect /dev/nbd4
