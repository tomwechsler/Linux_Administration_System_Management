#Working on alma

#It is easier in a root session
sudo -i

#Lets setup some device files, loops and partitions
fallocate -l 1G disk
losetup /dev/loop1 disk1
parted /dev/loop1 mklabel msdos mkpart primary 0% 50% mkpart 50% 100%
lsblk

#The challenge is, this is not persistent
reboot

#After reboot
sudo -i
lsblk
ls
losetup /dev/loop1 disk1
lsblk
partprobe /dev/loop1
lsblk

#Now our service unit comes into play
systemctl edit losetup.service --full --force

#Use the losetup.service file

#Reload the daemon
systemctl daemon-reload

#Enable our service unit
systemctl enable losetup.serivce

#Reboot the system
reboot

#After reboot
lsblk

#If you wish to list the content
systemctl cat losetup.serivce