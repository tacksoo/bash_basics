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
# the . indicates the current directory
# the .. indicate the parent directory
cd .

pwd

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



