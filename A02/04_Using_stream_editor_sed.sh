#Working on ubuntu and list the sshd settings
sudo sshd -T

#We are looking for the password authentication
sudo sshd -T | grep passwordauthentication

#Search with grep
sudo grep -i PasswordAuthentication /etc/ssh/sshd_config

#To edit direkt with an editor
sudo nano /etc/ssh/sshd_config 
^W PasswordAuthentication 

sudo vim /etc/ssh/sshd_config 
/Password

#To change the sessings with sed
sudo sed -Ei 's/PasswordAuthentication no/PasswordAuthentication yes/'

#A bit shorter
sudo sed -Ei 's/(PasswordAuthentication) no/\1 yes/' /etc/ssh/sshd_config

#Did it work?
sudo grep -i PasswordAuthentication /etc/ssh/sshd_config

#Now we need to restart the service
sudo systemctl restart sshd

#Check the new settings
sudo sshd -T | grep passwordauthentication



To script or automate edits, always the goal in DevOps, we can look at sed, the Linux stream
editor. The Ubuntu Vagrant system does not enable password-based SSH authentication by default.