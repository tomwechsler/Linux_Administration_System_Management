#It is easier in a root session
sudo -i

#Lets open the device
cryptsetup luksOpen /dev/loop1p1 my-data

#List the mount count
dumpe2fs /dev/mapper/my-data | grep -i "mount count" 

#List infos about the filesystem
tune2fs -l /dev/mapper/my-data

#Change the label
tune2fs -L my-data /dev/mapper/my-data

#Did it work?
tune2fs -l /dev/mapper/my-data | head

#Create a mount point
mkdir /data

#Mount the device
mount LABEL=my-data /data

#Put a file on it
echo hello > /data/file1

#Check the infos
tune2fs -l /dev/mapper/my-data | head



We added the ext4 filesystem to the encrypted partition. A filesystem is always added with the
mkfs command. We can set some options when creating the filesystem, others can be set with
the command tune2fs.