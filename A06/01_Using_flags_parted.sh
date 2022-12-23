#Working on alma - Note: Reset of all systems

#It is easier in a root session
sudo -i

#List the block devices
lsblk

#Create a disk file
fallocate -l 1G disk0

#Link the device to the file
losetup -f --show disk0

#Lets use parted
parted /dev/loop0 mklabel msdos mkpart primary 0% 50%

parted /dev/loop0 mkpart primary 50% 100%

#Print the partitions
parted /dev/loop0 print

#Now set the flags
parted /dev/loop0 set 1 lvm on

parted /dev/loop0 set 2 lvm on

#Print the partitions to view the flags
parted /dev/loop0 print