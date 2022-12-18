#Starting on ubuntu and create a user
sudo useradd -m user1 -s /bin/bash

#Set the password
sudo passwd user1 

#Switch to alma and copy the file ubuntu
scp file1 user1@192.168.56.102:

#Add a directory
mkdir docs

#Find some file and copy to the new directory
find /usr/share/doc -name '*.html'

find /usr/share/doc -name '*.html' -exec cp {} docs/ \;

#List the content
ls docs

#Copy the content with rsync to ubuntu
rsync -ave ssh docs user1@192.168.56.102:

#Run again noting happens
rsync -ave ssh docs user1@192.168.56.102:

#Create a file
touch docs/file1

#Run again, just the changes are copied
rsync -ave ssh docs user1@192.168.56.102:




Whilst scp is ok to copy single file to remote systems, rsync is better equipped to copy
complete directory structures and keep them up to data.