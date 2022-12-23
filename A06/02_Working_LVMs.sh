#It is easier in a root session
sudo -i

#List the block devices
lsblk

#The vagrant box has no lvm support
dnf install -y lvm2

#Check the lvm support
pvs

#We create a physical lvm device (this step is optional)
pvcreate /dev/loop0p1

#We can check
pvs

#There is no volume group
vgs

#Create a volume group (it creates also physical device)
vgcreate -v vg1 /dev/loop0p2

#Check
pvs
vgs

#Display the volume group
vgdisplay vg1

#Now create the logical volume
lvcreate -n data -l 100%FREE vg1

#Check
lvs
lvs vg1

#Create a filesystem
mkfs.xfs /dev/vg1/data

#Its a symbolic link
ls -l /dev/vg1/data

#Create a dirctory
mkdir /data

#Mount the device
mount /dev/vg1/data /data

#Put some files on it
find /usr/share/doc -name "*.html" -exec cp {} /data \;

#Check
ls /data

#Check the size
lvs
lvdisplay vg1/data
df -h /data
vgs

#Now we extend the lvm
vgextend vg1 /dev/loop0p1

#Proof
vgs

#Extend the volume
lvextend vg1/data -r -L +500

#Check the size
lvs
lvdisplay vg1/data
df -h /data
