#Lets look at our tar file
ls -lh etc.tar

#Compress with gzip
gzip etc.tar

#Check the size
ls -lh etc.tar.gz

#The tar file has gone
ls -l

#To extract the zip file
gunzip etc.tar.gz

#The tar file is back
ls -l

#Compress with xz (default is -z)
xz etc.tar

#Check the size
ls -lh

#To decompress
xz -d etc.tar.xz

#The tar file is back again
ls -lh


Various compression utilities exist in Linux

- gzip / gunzip
- bzip2 / bunzip2
- xz -z / xz -d