#Working on alma

#List the timers
systemctl list-timers

#Some packages use the timer units
sudo dnf install -y sysstat

#Start the sysstat service
sudo systemctl enable --now sysstat

#List the timers
systemctl list-timers