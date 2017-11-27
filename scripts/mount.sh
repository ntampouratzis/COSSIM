#!/bin/bash

# It takes 2 exactly parameters (e.g.: ./mount ARCH fullpath/filename) #
echo "Mount file (or folder) in appropriate GEM5 image!"
echo "Architecture : $1"
echo "Path of file : $2"

if [ "$1" == "X86" ]; then
  sudo mount -o loop,offset=32256 $HOME/COSSIM/kernels/disks/x86_64root.img /mnt
  sudo cp -R $2 /mnt
  sudo umount /mnt
elif [ "$1" == "X86-Ubuntu" ]; then
  sudo mount -o loop,offset=32256 $HOME/COSSIM/kernels/disks/ubuntu-12.04.img /mnt
  sudo cp -R $2 /mnt
  sudo umount /mnt
elif [ "$1" == "ARM32" ]; then
  sudo mount -o loop,offset=32256 $HOME/COSSIM/kernels/disks/linux-aarch32-ael.img /mnt
  sudo cp -R $2 /mnt
  sudo umount /mnt
elif [ "$1" == "ARM32-Ubuntu" ]; then
  sudo mount -o loop,offset=32256 $HOME/COSSIM/kernels/disks/aarch32-ubuntu-natty-headless.img /mnt
  sudo cp -R $2 /mnt
  sudo umount /mnt
elif [ "$1" == "ARM64" ]; then
  sudo mount -o loop,offset=32256 $HOME/COSSIM/kernels/disks/linaro-minimal-aarch64.img /mnt
  sudo cp -R $2 /mnt
  sudo umount /mnt
elif [ "$1" == "ARM64-Ubuntu" ]; then
  sudo mount -o loop,offset=32256 $HOME/COSSIM/kernels/disks/aarch64-ubuntu-trusty-headless.img /mnt
  sudo cp -R $2 /mnt
  sudo umount /mnt
else
  echo "It takes 2 exactly parameters (e.g.: ./mount ARCH fullpath/filename)"
fi
