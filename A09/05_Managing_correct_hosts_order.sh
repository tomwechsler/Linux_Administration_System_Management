#Working on openSUSE in a root session
sudo -i

#Install a cli browser and the apache webserver
zypper install -y w3m apache2

#Check the service
systemctl status apache2

#Start the webserver
systemctl enable --now apache2

#Check the service
systemctl status apache2

#Check the listening ports
ss -ntl

#Create a own index.html
echo "Toms Web Page!" > /srv/www/htdocs/index.html

#Did it work?
w3m localhost

#What about an external page
w3m ford.com

#Lets look at the name resolution order
grep ^hosts /etc/nsswitch.conf

#Cat the hosts file
cat /etc/hosts

#Lets put an entry on it
echo '127.0.0.1 www.ford.com' >> /etc/hosts

#What have we done
w3m www.ford.com

#We change the order - this brings us direct to hosts in the file
vim +/^hosts: /etc/nsswitch

#Change the order from files dns to dns files
#Save and exit

#Much better
w3m www.ford.com

#This still works
w3m opensuse

#The hosts file
tail /etc/hosts

#We remove the entry with a vim trick (d for delete and x to save and exit vim)
vim +"/ford/d|x" /etc/hosts

#Lets check
!t