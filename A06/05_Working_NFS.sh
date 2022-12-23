#It is easier in a root session on alma
sudo -i

#List the tools
dnf list nfs-utils

#Which ports are open
ss -ntl

#Start the nfs service
systemctl start nfs-server.service

#Check the ports again
ss -ntl

#Lets configure NFS
less /etc/nfs.conf

nfsconf --set nfsd vers4 y 
nfsconf --set nfsd tcp y
nfsconf --set nfsd udp n
nfsconf --set nfsd vers3 n 

less /etc/nfs.conf

#Restart the services
systemctl stop nfs*

systemctl start nfs-server

#List the ports again
ss -ntl

#Just the port 2029 is important

#Check for some data
ls /data

#Now lets create the exports
vim /etc/exports.d/data.exports

/data 192.168.56.*(rw,sync)

#Save and exit

#List the exports
exportfs

exportfs -r

exportfs

#SWITCH TO UBUNTU

#Install the tools
sudo apt update && sudo apt install -y nfs-common

#Mount the NFS share
sudo mount 192.168.56.101:/data /mnt

#List the content
ls /mnt




We can either edit the new /etc/nfs.conf file or make use of the equally new nfsconf command line utility.

The NFS servers allow us to share filesystems are part thereof. We can define shares in the
/etc/exports file or dynamically from the command line with exportsfs. We also have an
extension directory where we can add files ending in .exports.