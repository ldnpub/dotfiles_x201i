#### https://fogelholk.io/installing-arch-with-lvm-on-luks-and-btrfs/


loadkeys fr
cryptsetup luksOpen /dev/sda2 btrfs-system
mount -o subvol=root,ssd /dev/mapper/btrfs-system /mnt
mount -o subvol=home,ssd /dev/mapper/btrfs-system /mnt/home
mount -o subvol=swap,ssd /dev/mapper/btrfs-system /mnt/swap
swapon /mnt/swap/swapfile
mount /dev/sda1 /mnt/boot
arch-chroot /mnt /bin/zsh
