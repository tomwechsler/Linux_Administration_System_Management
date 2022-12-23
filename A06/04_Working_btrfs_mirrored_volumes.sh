#It is easier in a root session in openSUSE
sudo -i

#Install the btrfs package
zypper install -y btrfsprogs

#Check for loop devices
losetup

#Create some disk files
fallocate -l 1G disk0
fallocate -l 1G disk1

#Link the device to the file
losetup -f --show disk0
losetup -f --show disk1

#Create a mirrored volume
mkfs.btrfs -m raid1 -d raid1 /dev/loop0 /dev/loop1

#Mount and check the size
mount /dev/loop0 /mnt

df -h /mnt

#Check with btrfs
btrfs filesystem df /mnt

#Generate some stuff
dd if=/dev/zero of=/mnt/file1 bs=1M count=800

#Check the size
df -h /mnt

btrfs filesystem df /mnt