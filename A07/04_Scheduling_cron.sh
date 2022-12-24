#Working on alma

#List the cron files
ls /etc/cron*

#List the crontab content
cat /etc/crontab

#Let create an entry
sudo vim /etc/crontab
15 9-17 * * 1-5 root df -h > /tmp/diskfree
#Save and exit

#List the user cron
crontab -l

#Create a user cron
crontab -e
*/15 * * * * echo hello > /tmp/hello

#List the user cron
crontab -l