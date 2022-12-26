#We are working on openSUSE in a root session
sudo -i

#The config file
cat /etc/resolv.conf

#This trick brings us to right position
vim +/NETCONFIG_DNS_STATIC_SERVERS /etc/sysconfig/network/config

#Lets add a dns server
#Save and exit

#The config file
cat /etc/resolv.conf

#Update
netconfig update -f

#The config file
cat /etc/resolv.conf

#Use dig
dig www.cisco.com