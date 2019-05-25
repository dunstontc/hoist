# Arch Linux Installation

## Links in the Arch Wiki
- [Installation Guide](https://wiki.archlinux.org/index.php/Installation_guide#Post-installation)
- [Create a File System](https://wiki.archlinux.org/index.php/File_systems#Create_a_file_system)
- [Gneral Recommendations](https://wiki.archlinux.org/index.php/General_recommendations)
- [Desktop](https://wiki.archlinux.org/index.php/Window_manager)
- [Window Manager](https://wiki.archlinux.org/index.php/Window_manager)

# Full Arch Linux Install (SAVAGE Edition!)

1. 
  - Check for uefi
    - `ls /sys/firmware/efi/efivars`
  - Check for net connection
    - `ping google.com`
  - Set the clock
    - `timedatectl set-ntp true`
2. Partition the Drives
  - `fdisk /dev/sda`
    - **boot**
      - 200Mb
    - *swap*
      - 150% of your RAM.
    - **root**
      - ~20Gb
    - **home**
      - 25+ Gb
3. Make the File Systems
  ```bash
    mkfs.ext4 /dev/sda1
    mkfs.ext4 /dev/sda3
    mkfs.ext4 /dev/sda4
  ```
4. Set Up the Swap Partition
  ```bash
    mkswap /dev/sda2
    swapon /dev/sda2
  ```
4. Mount the Drives
  ```bash
    mount /dev/sda3 /mnt

    mkdir /mnt/home
    mkdir /mnt/boot

    mount /dev/sda1 /mnt/boot
    mount /dev/sda4 /mnt/home
  ```
5. Install Arch Linux
  ```bash
    pacstrap /mnt base  # base-devel vim
  ```
6. Make an fstab file
  - `genfstab /mnt >> /mnt/etc/fstab`
7. Change dat root
  - `arch-chroot /mnt`
8. Bootloader
  ```bash
    pacman -S grub
    grub-install --target=i386-pc /dev/sda
    grub-mkconfig -o /boot/grub/grub.cfg
  ```
9. Initial Network Setup
  - Network
    ```bash
      pacman -S networkmanager
      systemctl enable NetworkManager
    ```
  - Password
    - `passwd`
  - Locale
    - `echo "LANG=en-US.UTF-8" > /etc/locale.conf`
  - Timezone
    ```bash
      ls /usr/share/zoneinfo
      ln -sf /usr/share/zoneinfo/America/Chicago /etc/localtime
    ```
  - Hostname
    - `echo "arch1" >> /etc/hostname`
