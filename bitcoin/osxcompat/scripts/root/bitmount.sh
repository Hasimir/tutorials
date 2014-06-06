#!/bin/bash
#
# This will prompt for the LUKS password following the first command:

cryptsetup luksOpen /dev/sdc bitcoin
mount -t ext4 /dev/mapper/bitcoin /mnt/bitcoin

