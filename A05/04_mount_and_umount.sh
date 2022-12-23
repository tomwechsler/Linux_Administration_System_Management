#We are working in alma

#It is easier in a root session
sudo -i

#Check the mounts
mount

#Infos about a mount
mount -t iso9660

#Infos about the xfs/ext4 mounts
mount -t xfs
mount -t ext4

#We mount a device
mount /dev/loop1p2 /data

#Infos about the xfs mounts
mount -t xfs

#Umount
umount /data2

#Search the blockid
blkid /dev/loop1p2

#Lets look at the man page for fstab
man fstab

#We edit the fstab file
vim /etc/fstab

#We use the blkid for the mount /data2 xfs defaults 0 0
#Save and exit

#We use mount
mount /data2

#Did it work
mount -t xfs

#The loop devices are not permanent, we have to use a comment in the fstab file
vim /etc/fstab



To access the filesystem, it needs to be mounted. This was seen briefly with the ISO file and the
btrfs FS. The FS is mount to a mount-point and not drive letters as used in other OSs. The
mount-point is a directory in the root filesystem. Mounting by the UUID rather than device
name ensures uniqueness and protects against hardware renaming.