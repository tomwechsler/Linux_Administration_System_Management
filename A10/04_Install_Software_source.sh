#Working on ubuntu

#Start the script or
sudo apt install -y git wget build-essential checkinstall libpcre3-dev libssl-dev libpcap-dev

#Clone the github nmap repo
git clone https://github.com/nmap/nmap.git 

#Change in to the directory
cd nmap

#List the content
ls

#The Make template
ls Mak*

#Start the config
./configure 

#The make files
ls Mak*

#Start make
make 

#Put the binaries on the right place
sudo make install 

#Check the version
nmap -V

#The version in the repos
apt search '^nmap$'



To get the very latest version of software or to customize the install, we can download and
compile the source code.