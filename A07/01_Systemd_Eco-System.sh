#Working on alma

#If tab completion for systemctl does dit work
sudo dnf install -y bash-completion

#About the serivces
systemctl status

#About a service
systemctl status chrony tab tab

systemctl status chronyd

#To stop an disable a service
sudo systemctl disable --now chronyd.service

#To start and enable a service
sudo systemctl enable --now chronyd.serivce

#Analyze the system startup time
systemd-analyze

#More details
systemd-analyze blame

#More commands about the systemd eco-system
sudo hostnamectl set-hostname almalinux
hostnamectl
sudo timedatectl set-timezone 'Europe/Zurich'
timedatectl
sudo localectl set-locale LANG=en_ tab tab
localectl