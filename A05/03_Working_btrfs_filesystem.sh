#We are working on openSUSE

#It is easier in a root session
sudo -i

#To get the btrfs support we install the package
zypper install -y btrfsprogs

#Create two new disk file
fallocate -l1G disk1
fallocate -l1G disk2

#Link the device to the file
losetup -f --show disk1 
losetup -f --show disk2 

#Create the filesystem
mkfs -t btrfs /dev/loop0

#Create a directory
mkdir /data

#Mount the device
mount /dev/loop0 /data

#Check with df
df -h
df -h /data

#Get infos
btrfs filesystem show /data

#Add a device
btrfs device add /dev/loop1 /data

#Get infos
btrfs filesystem show /data

#What about the diskspace
df -h /data



The btrfs filesystem (B-Tree Filesystem) is newer and based around the ReiserFS which was big
in SUSE and ZFS which was developed in Solaris. It is no longer included in RHEL 8 but can be
installed in openSUSE or Ubuntu; we use it in openSUSE. One big advantage is that we can add
additional storage to existing live filesystems.