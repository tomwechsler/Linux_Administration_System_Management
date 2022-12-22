#It is easier in a root session
sudo -i

#Diskspace and filesystem
df -hT /

#We use xfs_info
xfs_info /

#Online defragmentation
xfs_fsr -v /

#Start again no defrag is needed
xfs_fsr -v /

#Create a xfs filesystem on loop1p2
mkfs -t xfs /dev/loop1p2

#Set the label
xfs_admin -L mkt /dev/loop1p2

#Get the infos
xfs_info /dev/loop1p2

#List the label
xfs_admin -l /dev/loop1p2


The xfs filesystem is the default in RHEL 8 and Alma Linux. The filesystem can be defragmented
online using xfs_fsr. Again, the volume label can be set during the creation of the filesystem or
later, this time using xfs_admin.