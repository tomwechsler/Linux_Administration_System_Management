#Start a root session
sudo -i

#List the IP
ip -4 a

#Infos from the service
systemctl status network

#List all the Infos
wicked show all

#The config file
cat /etc/sysconfig/network/ifcfg-eth1

#Shutdown the interface
wicked ifdown eth1

#Show the state
wicked show eth1

#With ip
ip l

#With ip and ls
ip l ls up

#Activate the interface
wicked ifup eth1

#The non persistent ip has gone
ip -4 address show