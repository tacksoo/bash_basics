# some basic unix commands 
# you can execute this file by typing 'sh basics.sh'
# not that it does anything useful though

# lists files 
ls

# lists files hidden file and directories
ls -a

# lists files in long format
ls -l

# list the present working directory
pwd 

# the . indicates the current directory
# the .. indicate the parent directory
# cd .

# go to the home directory
cd ~  # cd works as well

# go to previous directory
# cd -

# create an empty file
touch original.txt

# concatenate and print file
cat original.txt

# copy file
cp original.txt copy.txt

# rename file
mv copy.txt clone.txt

# delete file
rm original.txt clone.txt

# bang (!) repeats the last command starting with the first letter after it
!t  # executes 'touch original.txt'

# write a line of text to standard output 
# the file descriptor for standard output (stdout) is 1
echo "Hello World" 

# redirect stdout to a file
echo "Hello World" > original.txt

# you can append to a file as well
echo "Hello Again World" >> original.txt

# simple arithmetic with echo
echo $((1+1))

# print out the first ten lines of a file
# you can also use the -n option to specify how many lines you want 
head original.txt

# you can print out the last few lines of a file using tail
# you can monitor a file as it gets updated with the -f option
tail original.txt

# show the environment variables 
env

# show the current PATH
echo $PATH

# generate a random number
echo $RANDOM

# show the type of the a file
file original.txt

# download a file from the web 
curl -o readme.txt https://raw.github.com/tacksoo/bash_basics/master/README.md

# redo previous command
!!

# find about the location of a command
which bash

# 
