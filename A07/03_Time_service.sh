#Working on alma

#List time info
timedatectl

#List the chronyd
systemctl status chronyd

#What is chrony using
chronyc sources

#The chrony config file (RHEL:/etc/chrony.conf | Ubuntu:/etc/chrony/chrony.conf)
cat /etc/chrony.conf

#Optimize the output
grep -vE '^(#|$)' /etc/chrony.conf

#Install a time client
sudo dnf install -y epel-release
sudo dnf install -y systemd-timesyncd

#If we start systemd-timesyncd it will stop chronyd
sudo systemctl enable --now systemd-timesyncd

sudo systemctl status chronyd

#Check the service
sudo systemctl status systemd-timesyncd

#To list the config
cat /etc/systemd/timesyncd.conf