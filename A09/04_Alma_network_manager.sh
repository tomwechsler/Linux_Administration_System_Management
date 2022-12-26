#Start with a root session
sudo -i

#Show the IP's
ip address show

#To delete an non peristent ip
ip address delete 172.16.56.101/24 dev enp0s8

#Show the ip
ip -4 address show enp0s8

#Working with nmcli
nmcli connection show

#nmcli tab tab
nmcli connection tab tab

#Delete a connection
nmcli connection delete Wired\ connection\ 1

#Working with nmcli
nmcli connection show

#Cat the config file
cat /etc/sysconfig/network-scripts/ifcfg-enp0s8

#Add a second ip
nmcli connection modify System\ enp0s8 ipv4.addresses 192.168.56.101/24,172.16.56.101/24

#Check the ip
ip -4 address show enp0s8

#Did it work
cat /etc/sysconfig/network-scripts/ifcfg-enp0s8

#Change the interface to down and up
nmcli connection down System\ enp0s8
nmcli connection up System\ enp0s8

#Check the ip
ip -4 address show enp0s8