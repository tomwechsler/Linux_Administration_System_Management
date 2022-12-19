#Find some files
find /usr/share/doc -name '*.html'

#Switch into the directory
cd /usr/share/doc

#Find the files
find -name '*.html'

#Create an archive with cpio
find -name '*.html' | cpio -o > /tmp/doc.cpio

#Switch to tmp
cd /tmp

ls

#Create a directory
mkdir restore && cd restore

#And restore...but this does not work
cpio -i < ../doc.cpio

#We have to cerate the directories
cpio -id < ../doc.cpio

#Lets check
tree