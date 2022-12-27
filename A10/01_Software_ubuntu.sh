#We are working on ubuntu in a root session
sudo -i

#Lets look at the source
ls /etc/apt/sources*

#Cat the config file
cat /etc/apt/sources.list

#To much text
grep -vE '^(#|$)' /etc/apt/sources.list

#The last metadata update
stat -c %z /var/lib/apt/periodic/update-success-stamp

#Update the cache
apt update

#The last metadata update
stat -c %z /var/lib/apt/periodic/update-success-stamp

#Search for package
apt search tree

#Much better
apt search '^tree$'

#Install tree
apt install -y tree

#Does tree work?
tree -L 1 /

#Remove with apt (does not remove config files)
apt remove tree

#Remove with apt (does also remove config files)
apt purge tree

#What is upgradable
apt list --upgradable

#Give a go
apt upgrade -y
