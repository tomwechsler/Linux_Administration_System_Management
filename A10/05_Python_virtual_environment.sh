#Working on ubuntu

#Update the metadata
sudo apt update

#List the upgradables
sudo apt list --upgradable

#Check the python version
python3 --version

#The path
which python3

#Install the virtualenv
sudo apt install python3-virtualenv 

#A working directory
mkdir python

#Change into
cd python 

#Create the virtualenv
virtualenv ansible

#List the content
ls -R

#Activate the virtualenv
source ansible/bin/activate 

#Check the python path
which python3

#Install ansible
pip3 install ansible 

#Check the version
ansible --version

#Deactivate the virtualenv
deactivate

#Ansible is not available
ansible

#The ansible version in the repo
apt search '^ansible$'



Ansible is Python based configuration management tool. It uses many Python libraries which we
can keep separate from the system Python libraries using a virtual environment.