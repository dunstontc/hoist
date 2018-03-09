# Update your Arch install
sudo pacman -Syu

# === Sync fastest mirrors ===
sudo pacman -S reflector

# Verbosely rate and sort the five most recently synchronized mirrors by download speed,
# and overwrite the file /etc/pacman.d/mirrorlist:
sudo reflector --verbose --latest 5 --sort rate --save /etc/pacman.d/mirrorlist

# Select the 200 most recently synchronized HTTP or HTTPS mirrors,
# sort them by download speed, and overwrite the file /etc/pacman.d/mirrorlist:
sudo reflector --latest 200 --protocol http --protocol https --sort rate --save /etc/pacman.d/mirrorlist

# Select the HTTPS mirrors synchronized within the last 12 hours and located in the US,
# sort them by download speed, and overwrite the file /etc/pacman.d/mirrorlist:
sudo reflector --country 'United States' --age 12 --protocol https --sort rate --save /etc/pacman.d/mirrorlist


# sudo vi /etc/pacman.conf

# [archlinuxfr]
# SigLevel = Never
# Server = http://repo.archlinux.fr/$arch
