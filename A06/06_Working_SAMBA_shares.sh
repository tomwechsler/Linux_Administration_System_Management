#It is easier in a root session on alma
sudo -i

#Install the package
dnf install -y samba samba-common

#Edit the config file
vim /etc/samba/smb.conf 

[data] 
  path = /data 
#Save and exit

#List /data
ls /data

#We have to create SAMBA user
pdbedit -a vagrant

#Start the service
systemctl start smb.service

#Check the SELinux context
ls -Zd /data

#Change the SELinux context
chcon -t samba_share_t -Rv /data

#Check the SELinux context
ls -Zd /data

#SWITCH TO UBUNTU

#We install the package
sudo apt update && apt install -y cifs-utils

#Not mount
sudo umount /mnt

#Mount the SAMBA share
sudo mount -o user=vagrant,password=Password1 //192.168.56.101/data /mnt

#Check
ls /mnt



Working on the Alma 8.5 system we can install the Samba server and share the data directory.
We need a client account that exists in both Samba and Linux as well as setting the SELinux
context for files that will be shared.

On the Ubuntu system we install the cifs-utils package to all access to the Windows shares. We
can mount using a credentials file if we dont want to pass the username and password at the
command line.