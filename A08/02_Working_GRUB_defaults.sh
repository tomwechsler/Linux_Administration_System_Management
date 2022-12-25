#Working on alma

#Check the grub defaults
sudo cat /etc/default/grub

#Change the timeout
sudo vim /etc/default/grub

#Create the new grub file
sudo grub2-mkconfig > /etc/grub2.cfg

#List the linux distribution
sudo cat /etc/system-release

#From the grub defaults
sed 's, release .*$,,g' /etc/system-release

#Lets reboot the system and check the timeout
sudo reboot