#Start with ls and the last edited files
ls -ltr /etc

#The last edited files, really?
sudo vi /etc/hosts

#Add new line with 8.8.8.8 google

#ls again
ls -ltr /etc

#A new file with touch
touch file1 

#Metadata
ls -l file1

#With the file command
file file1

#The statistics with stat
stat file1 

#What will change if we cat the file
cat file1

#The statistics with stat
stat file1

#Some text
echo hello >> file1

#What about the stats
stat file1

#We change the mode
chmod 770 file1

#What about the stats
stat file1

#Show some values
stat -c %x file1 #Access 
stat -c %y file1 #Modify 
stat -c %z file1 #Change

#If we copy
cp file1 file2

#Stat file2
stat file2

#To keep the metadata
cp -a file1 file3

#The stats
stat file3

#Move a file (rename in this case)
mv file1 file4

#List the files
ls file*

#Stat file4
stat file4

#Copy from another directory
cp -a /etc/hosts .

#Stat hosts
stat hosts



Field              Meaning

Access             Last read
Modify             Data last modified
Change             Metadata last changed



To maintain meatdata when copying files we can use the option -a or --archive, ownership,
permissions and timestamps are all copied with the file.

-a is equal to -dR --preserve=all