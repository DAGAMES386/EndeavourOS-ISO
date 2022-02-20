pacman -S --noconfirm --needed archlinux-keyring
pacman -S --needed --noconfirm archiso mkinitcpio-archiso
pacman -S wget --noconfirm --needed
wget https://raw.githubusercontent.com/endeavouros-team/PKGBUILDS/master/endeavouros-mirrorlist/endeavouros-mirrorlist -O /etc/pacman.d/endeavouros-mirrorlist
wget https://raw.githubusercontent.com/endeavouros-team/EndeavourOS-ISO/main/airootfs/etc/pacman.conf -O /etc/pacman.conf
pacman -S --noconfirm --needed endeavouros-keyring
pacman-key --init
pacman-key --populate archlinux endeavouros
pacman-key --refresh-keys

mkarchiso -v -w ./work -o ./out ./
echo "ISO Built in ./out folder!"
