#Check the terminal session
tty

#Get details about it
ls -l /dev/pts/0

#In another way
ls -l $(tty)

#Lets have a look at the metadata

#Install tree
sudo dnf install -y tree

#If you get some locale warnings use:
export LC_ALL="en_US.UTF-8"

#With tree we will have a look at the FHS (Filesystem Hierarchy Standard)
tree -L 1 /

#So then in /dev we will find devices
ls -l /dev

#With the tree command
tree /dev

#Infos about the directory
ls -ld /dev

#If the directory has execute perms we can cd into it
cd /dev

#The working directory
pwd

#With cd without argument gets to home diretory
cd

#cd - gets back
cd -

#Why, its in a variable
echo $OLDPWD 

cd $OLDPWD or cd -

#Lets create a directory
mkdir test

#About the directory
ls -ld test

#There are 2 hardlinks
ls -ld test/.

#Create a path
mkdir -p test/d1/d2

#We proof
tree test

#Another way
mkdir test/d{10..19}

#We proof
tree test

#To remove
rm -rf test



Some of the very basic Linux operations involve the cd command. I am sure this is basic to
you but lets look at some things you may not know.

