#Working on alma

#Set the vagrant password
sudo passwd vagrant

#DO NOT DO THIS ON A PRODUCTION SYSTEM
sudo rm /boot/initramfs-$(uname -r).img

#Reboot the system and we have a kernel panic

#Reboot into rescue mode and login as vagrant
sudo -i

#Create a new initramfs
mkinitrd --force /boot/initramfs-$(uname -r).img $(uname -r)

#Poweroff the system and start again

#Lets proof
ls /boot