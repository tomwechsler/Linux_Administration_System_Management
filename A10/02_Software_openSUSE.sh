#We are working on openSUSE in a root session
sudo -i

#The repo refresh (is optional)
zypper refresh

#List the repos
zypper lr

#The config files
ls /etc/zypp/repos.d/

#Search for a package
zypper search tree

zypper search --match-words tree

zypper search --match-exact tree

#Install tree
zypper install -y tree

#Remove tree
zypper remove -y tree

#Update the system
zypper update -y