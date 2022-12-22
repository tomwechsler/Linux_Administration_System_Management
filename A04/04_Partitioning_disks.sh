#It is easier in a root session
sudo -i

#List the block devices
lsblk

#Create a partition with fdisk
fdisk /dev/loop1

#Be sure to choose the right disk!
#We create to partitions => +500M (the first)

#Maybe the system will tell us to use partprobe or kpartx

#Check with lsblk
lsblk

#Lets do a dry run
partprobe -ds /dev/loop1

#Now give it a run
partprobe /dev/loop1

#Check with lsblk
lsblk

#Lets us parted
parted /dev/loop2 mklabel msdos mkpart primary 0% 50% 

#The second partition (be sure to remove the mklabel)
parted /dev/loop2 mkpart primary 50% 100% 

#Lets print
parted /dev/loop2 print

#Check with lsblk
lsblk



A complete disk can be used without partitions. Partitioning allows for the disk to be broken
into the units needed. Here we create two partitions each oF 25% of the disk. The partition
table is written immediately.

When the hardware is detected the partition table is read into the OS. The command parted will
also inform the OS of partitions as they are created. Adding a partitions to an active disk may
need the OS to be informed of the changes. We can check the partition table with the option -d
(dry-run) without effecting the OS.