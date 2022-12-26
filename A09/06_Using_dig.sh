#We are working on openSUSE in a root session
sudo -i
zypper install -y bind-utils

#We use the host command
host www.cisco.com

#With dig
dig www.cisco.com 

#With a specific dns server
dig www.cisco.com @8.8.8.8

#A trick
dig www.cisco.com @1.0.0.1 #we use @1.1