#Starting on ubuntu
su - user1 && mkdir project1 && cd project1 

#Initialize the git repo
git init --bare

#Back to the home directory
cd

#And from the previous lesson
ls
ls docs

#Switch to alma
git clone user1@192.168.56.102:/home/user1/project1 

#Change into the directory, create a file and change the mode
ls -la project1

cd project1 && vim my.sh && chmod a+x my.sh

#Lets edit the script
vim my.sh

#!/bin/bash
echo "I am a script!"

#Save and exit

# The commands are git specific
git add .
git config --global user.email "you@example.com"
git config --global user.name "Your Name"
git commit -m "initial commit" 
git push

#Switch to opensuse and install git
sudo zypper in -y git-core

#Clone the repo
git clone user1@192.168.56.102:/home/user1/project1 

#Show the content
ls -l project1

#Run the script
./project1/my.sh



Working in DevOps, you will certainly come across the VCS (Version Control System) git,
allowing collaboration in development. Rather than using a hosting system such as GitHub or
GitLabs we can create our own SSH Host. There is more on git in later courses.