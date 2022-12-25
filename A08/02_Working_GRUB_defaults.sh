#Working on alma

#We need a root session
sudo -i

#Check the grub defaults
cat /etc/default/grub

#Change the timeout
vim /etc/default/grub

#Create the new grub file
grub2-mkconfig > /etc/grub2.cfg

#List the linux distribution
cat /etc/system-release

#From the grub defaults
sed 's, release .*$,,g' /etc/system-release

#Lets reboot the system and check the timeout
reboot