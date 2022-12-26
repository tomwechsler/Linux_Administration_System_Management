#We are working on openSUSE in a root session
sudo -i
zypper install -y bind-utils

#We use the host command
host www.ford.com

#With dig
dig www.ford.com 

#With a specific dns server
dig www.ford.com @8.8.8.8

#A trick
dig www.ford.com @1.0.0.1 #we use @1.1