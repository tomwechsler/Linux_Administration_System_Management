#Working on alma

#Check the kernel and initramfs
ls /boot

#Update the system (maybe it will add a new kernel version)
sudo dnf update

#Lets check
ls /boot

#Which kernel is in use
uname -r

#Reboot the system
sudo reboot

#After the reboot
uname -r