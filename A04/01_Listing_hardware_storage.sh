#Working on alma
ls and tab tab

#List storage (block) devices
sudo lsblk

#About the pci devices
sudo lspci

#The cpus
lscpu

#List the block device files, note: major and minor number in place of file size
ls -l /dev/sd*

#List storage (block) devices also with major and minor number
sudo lsblk

#Disk free
df -h /

#Check the size of a directory
sudo du -sh /etc

#We know ls
ls -lh /etc

#List largest files last
ls -lhSr /etc