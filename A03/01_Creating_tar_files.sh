#Disk usage from /etc
sudo du -sh /etc 

#Create a taf file
sudo tar -cf etc.tar /etc 

#Check the content (no leading /)
sudo tar -tf etc.tar

#What about the size of the .tar, is it commpressed?
ls -lh etc.tar 

#With the tar command there is no compression
ls -l --block-size=1K etc.tar

#Check the block size with du
sudo du -sk /etc

#To extract the tar file
tar -xf etc.tar

ls

#To test a restore
sudo rm /etc/hosts

cat /etc/hosts

cd /

sudo tar -xf ~vagrant/etc.tar etc/hosts

#Did it work?
!ca



The command tar can be used to create file archives. Although, Tape Archives,
they are more commonly used in standard filesystems. By default, a TAR file is
not compressed but may appear to be a slightly small size than the original
content. This is due to the more efficient use of blocks in the filesystem and not
compression.