#Working on alma
wget

#To list the package
sudo dnf list wget

#Which provides wget
sudo dnf provides /usr/bin/wget

#Install wget
sudo dnf install -y wget

#Download the ISO file
wget http://download.virtualbox.org/virtualbox/6.1.40/VBoxGuestAdditions_6.1.40.iso 

#Create the /mnt directory
sudo mkdir /mnt

#Check the block devices
sudo lsblk

#Mount the ISO file
sudo mount VBoxGuestAdditions_6.1.40.iso /mnt 

#The /mnt content
ls /mnt 

#Check the block devices
lsblk 

#The loop device was created automatically
sudo losetup

#To create a disk file
dd if=/dev/zero of=disk1.img bs=1M count=1000 

#A bit shorter and easier
fallocate -l 1G disk2.img

#Check the new files
ls -lh disk*



As a simple demonstration we download and mount a small ISO file. The contents of the ISO file
and not important to us, it is purely the small size of 36M that makes this a target for us.

Using either dd or fallocate, we can create disk file. The latter being more efficient as it does not
copy the data just allocating space.

ISO
ISO files are virtual disks with a filesystem and data added.
These can be mounted directly to mount points.

Disk Files
Using exess storage space, we can create disk files using dd or
fallocate. These files are linked to devices with losetup.