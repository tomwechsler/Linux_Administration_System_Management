#Working on alma

#It is easier as root
sudo -i

#The default kernel options
cat /boot/grub2/grubenv

#Remove some options
grubby --update=ALL --remove-args="rhgb"

#The default kernel options
cat /boot/grub2/grubenv

#There are some config files
cat /boot/loader/entries/

cat /boot/loader/entries/<...>.conf 

#Remove options from the kernel in use
grubby --update-kernel=/boot/vmlinuz-$(uname -r) --remove-args="resume rhgb quiet"

#Check if it works
cat /boot/loader/entries/<...>.conf

#Reboot the system and watch the startup (is not quiet anymore)
reboot