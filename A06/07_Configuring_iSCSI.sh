#It is easier in a root session on alma
sudo -i

#Check the open ports
ss -ntl

#List the block devices (the iSCSI will not be displayed after the configuration)
lsblk

#Install the package
sudo yum install targetcli

#Check the open ports
ss -ntl

#Move in to the targetcli
targetcli

#Here we create a backstores and target.
ls
backstore/fileio/ create targetdisk1 /root/targetdisk1 1G 
 
iscsi/ create iqn.2021-12.com.demo:san1 
 
ls 

cd iscsi/iqn.2021-12.com.demo:san1/tpg1/

ls

luns/ create /backstores/fileio/targetdisk1

acls/ create iqn.2015-03.com.demo.client:san1

cd /

exit 

#Check the open ports
ss -ntl

#List the block devices (the iSCSI will not be displayed after the configuration)
lsblk

#But the disk file is here
ls -lh

#Check the service and enable
systemctl status targert
systemctl enable targert

#SWITCH TO UBUNTU

#Check the block devices
lsblk

#Install the package if needed
sudo apt update && sudo apt install -y open-iscsi

#Config the iSCSI client
echo "InitiatorName=iqn.2015-03.com.demo.client:san1" | sudo tee /etc/iscsi/initiatorname.iscsi 

#Check
sudo cat /etc/iscsi/initiatorname.iscsi

#Restart the service
sudo systemctl restart iscsid.service open-iscsi.service

#Discover
sudo iscsiadm -m discovery -t sendtargets -p 192.168.56.101

#Connect to the block device
sudo iscsiadm -m node --login

#Check
lsblk

#Create a filesystem
sudo mkfs.ext4 /dev/sdc



The iSCSI Target is the server that shares disks or logical volumes on the network. You can make
your Linux server act as a SAN.