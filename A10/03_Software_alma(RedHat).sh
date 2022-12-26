#We are working on alma in a root session
sudo -i

#Is it yum or dnf
ls -l /usr/bin/yum

ls -l /usr/bin/dnf

#The repo list
dnf repolist

#All repos
dnf repolist --All

#The config file
ls /etc/yum

ls /etc/yum.repos.d/

#Update the cache (its optional)
dnf makecache

#The cache update timers
systemctl list-timers

#Install a package
dnf install -y tree

#Install a package with dependencies
dnf install httpd

#Remove it
dnf remove httpd

#Update the system
dnf update -y