#Start a root session
sudo -i

#Show the ip
ip -4 address show enp0s8

#About the config files
ls /etc/netplan/

#Show the content
cat vim /etc/netplan/50-cloud-init.yaml
cat /etc/netplan/50-vagrant.yaml

#Show the infos
netplan ip leases enp0s3

#Set a second IP
vim /etc/netplan/50-vagrant.yaml

#- 172.16.56.102

#Lets try the config
netplan try --timeout=20

#Ping from alma
ping 172.16.56.102

#Set the ip and check the ping on alma
netplan apply