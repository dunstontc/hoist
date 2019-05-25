# Arch Linux Setup

[Guide](https://linuxhint.com/install-arch-linux-virtualbox/)

<!-- TOC -->

1. [Download Arch Linux](#download-arch-linux)
1. [Partition the Hard Drive](#partition-the-hard-drive)
1. [Bootstrap Arch Linux](#bootstrap-arch-linux)
1. [Setup hostname and networking](#setup-hostname-and-networking)
1. [Install the Bootloader](#install-the-bootloader)
1. [Boot into the installed ArchLinux operating system](#boot-into-the-installed-archlinux-operating-system)

<!-- /TOC -->

## Download Arch Linux

- [Arch Linux Downloads](https://www.archlinux.org/download/)

## Partition the Hard Drive

```zsh
  lsblk  #check out yo drives

  cfdisk  # curses fdisk, pic dos

  # ...

  # Format the newly partitioned disk by typing:
  mkfs.ext4 /dev/sda1
  # Here sda1 is the partition name. Repeat this for the second drive by typing:
  mkfs.ext4 /dev/sda3
  # and for the swap partition,
  mkswap /dev/sda2

  # Activate the swap by typing:
  swapon /dev/sda2

  # Mount the primary partition to start the installation part by typing:
  mount /dev/sda1 /mnt
  mkdir /mnt/home
  mount /dev/sda3 /mnt/home
```

## Bootstrap Arch Linux

```zsh
  pacstrap /mnt base base-devel

  # After the base installation create the fstab file by tying:
  genfstab /mnt >> /mnt/etc/fstab
  # Configure locale, time and root password.
```

### Configure locale, time and root password.

```bash
  # Change the system root to the Arch Linux installation directory by typing:
  arch-chroot /mnt /bin/bash

  # Now to configure the language settings:
  vi /etc/locale.gen
  # Now uncomment the line with *en_US.UTF-8 UTF-8*

  # Now activate it by typing:
  locale-gen

  # Create the /etc/locale.conf 
  echo "LANG=en_US.UTF-8" >> /etc/locale.conf

  # Synchronize the zone information by typing:
  ls /usr/share/zoneinfo
```

## Setup hostname and networking

```bash
  # Enter the host name of the network
  echo "archserver" >> /etc/hostname

  # Enable the dhcpcd by typing:
  systemctl enable dhcpcd

```



## Install the Bootloader

```bash
  # The final step, initiate the grub installation. 
  pacman –S grub os-prober

  # Install the grub boot loader to the hard disk by typing:
  grub-install /dev/sda

  # and configure it:
  grub-mkconfig –o /boot/grub/grub.cfg

  # Finally, exit from chroot and then reboot the system
  exit
  reboot
```

## Boot into the installed ArchLinux operating system



```bash
  # Pacman can update all packages on the system with just one command.
  pacman -Syu
```
