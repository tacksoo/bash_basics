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

# create a directory
mkdir folder

# remove a directory
rmdir folder

# bang (!) repeats the last command starting with the first letter after it
!t  # executes 'touch original.txt'

# write a line of text to standard output 
# the file descriptor for standard output (stdout) is 1
echo "Hello World" 

# print without a new line
echo -n "Hello World"

# redirect stdout to a file
echo "Hello World" > original.txt

# you can append to a file as well
echo "Hello Again World" >> original.txt

# you can have more than one command in one line by using the semi-colon
echo "excuse me?" ; echo "come again?"

# simple arithmetic with echo
echo $((1+1))

# generate strings from A to Z
echo {A..Z}

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

# globally search a regular expression and print - grep
# print out lines that contain word 'the' in readme.txt
grep 'the' readme.txt

# print out lines that contain the whole the word 'the' in readme.txt
grep -w 'the' readme.txt

# ignore case
grep -i 'the' readme.txt

# count how many line contain the word 'the'
grep -c 'the' readme.txt

# show the line number of where the match occurs
grep -n 'the' readme.txt

# match 'the' starting with lowercase or uppercase t
grep '[Tt]he' readme.txt

# match any three numbers in a row
grep '[0-9][0-9][0-9]' readme.txt

# match zipcode
grep -w '[0-9]\{5\}' readme.txt

# match the word 'the' that start from the beginning of a line
grep '^the' readme.txt

# match the word 'the' at the end of a line
grep 'the$' readme.txt

# check every file in the current directory for the word 'the' and print out the filename
grep -l 'the' *

greeting="HELLO"

# translate all uppercase characters to lowercase
echo $greeting | tr [:upper:] [:lower:]

# uppercase to lowercase using character ranges instead
echo $greeting | tr [A-Z] [a-z]

# sorts a text file line by line lexicographically  
sort readme.txt

# sort and print only unique lines
sort -u readme.txt

# reverse sort
sort -r readme.txt

# do a numeric sort  i.e. 10 appears after 9 not 1 
sort -n readme.txt

# sort from a particular field, in this case start sorting from field 2 and end at field 2
sort -k2,2 readme.txt

# the stream editor command is useful for adding/deleting/changing words in a text file
# the following command appends the word 'Start: ' at the beginning of every line 
sed 's/^/Start: /' readme.txt

# this would only apply to the first five lines
sed '1,5s/^/Start: /' readme.txt

# you can also delete words using sed, the following will delete all the words 'the'
sed 's/the//' readme.txt

# of course you can also replace words 
sed 's/teh/the/' readme.txt

# find out the access, modify, and change time for a file
stat readme.txt

# find all the files ending with .txt from the current directory
find . -name '*.txt' -print 

# find all files that were modified later than readme.txt
find . -newer readme.txt -print 

# find all files created in the last 3 days (ctime, mtime, atime)
find . -ctime -3 -print

# look for the word 'the' in the files modified in the last 3 days
find . -mtime -3 -print | xargs grep 'the'

# look for files 'newer' than readme.txt
find . -newer readme.txt -print

# look for the word 'the' in every "file"
find . -type f | xargs grep 'the'

# look for the word 'the' in every "file" including files that contain a space
# http://serverfault.com/questions/268368/how-can-i-handle-spaces-in-file-names-when-using-xargs-on-find-results
find . -type f -print0 | xargs -0 grep 'the'


# heredoc http://en.wikipedia.org/wiki/Here_document
cat << EOF

   Write a wall of text without echo commands
   
EOF


