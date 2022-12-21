#Working with losetup
sudo losetup

#Listing the loop devices
ls /dev/loop*

#Link the device to the disk file
sudo losetup /dev/loop1 disk1.img

#We did not see so much
sudo losetup -f --show /dev/loop2 disk2.img

#Display the infos
sudo losetup

#Check the /dev directory
ls -l /dev/loop*

#And with lsblk
lsblk