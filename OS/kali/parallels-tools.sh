# https://kb.parallels.com/en/123968

# First upgrade the OS.
# apt-get clean
# apt-get update
# apt-get upgrade -y
# apt-get dist-upgrade -y
# apt-get install dkms kpartx printer-driver-postscript-hp


# This section is for when it doesn't work.
# su
# eject /dev/cdrom
# su
# rm -rf /root/Desktop/pt/
# apt-mark unhold xserver-xorg-input-all xserver-xorg-input-libinput
# rm -f /etc/apt/preferences.d/parallels-fix
# mkdir /etc/X11/xorg.conf.d/
# cd /etc/X11/xorg.conf.d/
# ln -s /usr/share/X11/xorg.conf.d/50-prlmouse.conf


# Next copy the tools to the system & install.
# mkdir /media/pt
# mkdir /root/Desktop/pt
# mount /dev/cdrom /media/pt
# cp -r /media/pt/  /root/Desktop/pt
# cd /root/Desktop/pt/pt
# ./install
