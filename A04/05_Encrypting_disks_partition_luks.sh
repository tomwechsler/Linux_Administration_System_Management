#Start with a root session
sudo -i

#We need some packages
dnf install -y cryptsetup

#We start with the configuration
cryptsetup luksFormat --type luks2 /dev/loop1p1 

#To work with the device
cryptsetup luksOpen /dev/loop1p1 my-data

#Show the infos
cryptsetup -v status my-data

#To hide our data, we write random zeros
dd if=/dev/zero of=/dev/mapper/my-data status=progress 

#Create a filesystem
mkfs.ext4 /dev/mapper/my-data

#To close the virtual device mapper
cryptsetup luksClose my-data



Additional security can be added by encrypting the underlying storage before a filesystem is
added. The passphrase is required to open the device to access the filesystem. The steps here
give you the basic steps for reference.