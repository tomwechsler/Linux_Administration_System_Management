#Working on alma

#Install the package
sudo dnf install -y at

#List the at files
ls /etc/at*

#Start the at service
sudo systemctl enable --now atd

#Create a job
at noon
ls /etc
#To exit the job use CTRL+D

#List the queue
atq

#Remove a job
atrm 3

#Create a job with a specific time
at 12/11/2023
ls /etc
#To exit the job use CTRL+D

#List the queue
atq

#Look at the details
at -c 4

#Remove a job
atrm 4

#List the queue
atq