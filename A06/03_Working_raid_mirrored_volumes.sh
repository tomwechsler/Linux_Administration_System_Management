#It is easier in a root session
sudo -i

#Create a new disk file
fallocate -l 1G disk1

#Link the device to the file
losetup -f --show disk1

#Create the label
parted /dev/loop1 mklabel msdos

#Create the first partition
parted /dev/loop1 mkpart primary 0% 50%

#Print the partition
parted /dev/loop1 print

#Create the second partition with the same size
parted /dev/loop1 mkpart primary 537M 1073M

#Print the partition
parted /dev/loop1 print

#Set the flags
parted /dev/loop1 set 1 raid on
parted /dev/loop1 set 2 raid on

#Print the partition
parted /dev/loop1 print

#We install the package for raid support
dnf install -y mdadm

#Nothing at the moment
cat /proc/mdstat

#Create the mirror
mdadm --create --verbose /dev/md0 --level=mirror --raid-devices=2 /dev/loop1p1 /dev/loop1p2

#Check
cat /proc/mdstat

#Create a filesystem
mkfs.ext4 /dev/md0

#Which kernel module has loaded
lsmod | grep raid

#About the config
mdadm --detail --scan

#And safe the config
mdadm --detail --scan >> /etc/mdadm.conf

#We can stop and start the raid
mdadm --stop /dev/md0
mdadm --assemble --scan



Software RAID:

Redundant Array of Inexpensive Disks (RAID). Usually used to create fault tolerant disk arrays.
Traditional Linux Software RAID creates dev mapper virtual device file. RAID is integrated into btrfs.

RAID Levels:


Linear:
Partitions/disk not the same size, volume is expanded 
across all disks in array. Spare disk is not supported.

RAID0:
Similar to above but the disks or partitions are of similar size.

RAID1:
Mirror data between devices of similar size.

RAID4/5/6:
Three or more devices (4 with RAID6), data is striped with parity.


RAID Configuration:

Alma
/etc/mdadm.conf

Ubuntu
/etc/mdadm/mdadm.conf