#### https://fogelholk.io/installing-arch-with-lvm-on-luks-and-btrfs/


loadkeys fr

mount -o remount,size=2G /run/archiso/cowspace
pacman -Sy git
git clone git://github.com/helmuthdu/aui
git clone git://github.com/ldnpub/dotfiles_x201i
cryptsetup luksOpen /dev/sda2 btrfs-system
mount -o subvol=root,ssd /dev/mapper/btrfs-system /mnt
mount -o subvol=home,ssd /dev/mapper/btrfs-system /mnt/home
mount -o subvol=swap,ssd /dev/mapper/btrfs-system /mnt/swap
swapon /mnt/swap/swapfile
mount /dev/sda1 /mnt/boot
arch-chroot /mnt /bin/zsh