#We use the time command to measure the time
time tar -cf etc.tar /etc 2>/dev/null

#We use the time command to measure the compression time
time tar -czf etc.tar.gz /etc 2>/dev/null

#We use the time command to measure the compression time
time tar -cJf etc.tar.xz /etc 2>/dev/null

#Check the file size
ls -lh etc.tar*




Creating a zipped archive with tar

- tar -czf (gzip)
- tar -cjf (bzip 2)
- tar -cJf (xz)