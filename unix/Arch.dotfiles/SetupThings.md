# 15 things to do after installing Arch Linux:

   
## 1. Add user to sudoers file: 
- sign in as root
- open the sudoers file: (leafpad /etc/sudoers)
- add user below sudoers section same format as file

## 2. Install gksudo command: (graphical frontend for the su command)
- `sudo pacman -S gksu`

## 3. Sync fastest mirrors:
```sh
sudo pacman -S reflector

# Verbosely rate and sort the five most recently synchronized mirrors by download speed, and overwrite the file /etc/pacman.d/mirrorlist:
sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist

# Select the 200 most recently synchronized HTTP or HTTPS mirrors, sort them by download speed, and overwrite the file /etc/pacman.d/mirrorlist:
sudo reflector --latest 200 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist

# Select the HTTPS mirrors synchronized within the last 12 hours and located in the US, sort them by download speed, and overwrite the file /etc/pacman.d/mirrorlist:
sudo reflector --country 'United States' --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist
```

## 4. Update your Arch install
- `sudo pacman -Syu`

## 5. Add yaourt to pacman:
- `sudo leafpad /etc/pacman.conf`
- add to bottom of file:
> [archlinuxfr]  
> SigLevel = Never   
> Server = http://repo.archlinux.fr/$arch  
- go to next step (enable multilib)
   
## 6. *Before saving file enable multilib*
- Save File
- Update System:
  - `sudo pacman -Syu`

## 7. Install wireless drivers:
- `yaourt -S broadcom-wl`


## 8. Add update utility to system tray:
- `yaourt -S pamac-aur`

## 9. Add downgrade ability:
```sh
yaourt -S downgrade
sudo pacman -S expac
```

## 10. Install user folders:
- `sudo pacman -S xdg-user-dirs`

## 11. Install File Utilities:
- `sudo pacman -S file-roller p7zip zip unzip unrar`

## 12. Install your printer:
```sh
sudo pacman -S system-config-printer cups
sudo systemctl start org.cups.cupsd.service
sudo systemctl enable org.cups.cupsd.service
yaourt -S brother-mfc-j870dw
yaourt -S brscan4
sudo brsaneconfig4 -a name=Brother model=mfcj870dw ip=192.168.1.6
```

## 13. Install multimedia codecs:
```sh
sudo pacman -S gstreamer0.10-bad-plugins gstreamer0.10-base-plugins gstreamer0.10-ffmpeg 
sudo pacman -S gstreamer0.10-good-plugins gstreamer0.10-ugly-plugins gst-libav gst-plugins-bad 
sudo pacman -S gst-plugins-base gst-plugins-good gst-plugins-ugly ffmpegthumbnailer
```

## 14. Install proprietary video drivers:
```sh
sudo pacman -S nvidia nvidia-libgl nvidia-settings lib32-libldap lib32-nvidia-utils lib32-nvidia-libgl 
sudo pacman -S lib32-alsa-lib lib32-alsa-plugins lib32-libpulse lib32-alsa-oss lib32-openal
```

## 15. Install audio apps:
- `sudo pacman -S pulseaudio pavucontrol pulseaudio-alsa alsa-utils`
