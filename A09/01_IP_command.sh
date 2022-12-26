#Working on openSUSE

#Show the IP address
ip address show

#Ifonfig is deprecated
ifconfig

#A bit shorter
ip a s

#More shorter
ip a

#The route table
ip r

#ARP cache
ip n

#List just the IPv4
ip -4 a

#List the links
ip l

#List the IPv4 for an interface
ip -4 a s eth1

#Ping alma
ping -c 3 192.168.56.101

#To add a non persistent IP
sudo ip address add 172.16.56.103/24 dev eth1

#List the IPv4 for an interface
ip -4 a s eth1

#Switch to alma
ip l
sudo ip address add 172.16.56.101/24 dev enp0s8

#List the IPv4 for an interface
ip -4 a s enp0s8

#IP route
ip r

#Ping openSUSE
ping -c 3 172.16.56.103

#ARP cache
ip n