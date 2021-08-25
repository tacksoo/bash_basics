#!/bin/bash
# read the name of the user and print hello

echo "Hello! What is your name"
read name
echo "Welcome, $name"

# single quotes prevent the expansion of the variable
echo 'Your name was stored in $name'

#to take input in silent mode like password 
#type string will notbe visible
read -s password
echo"password set to $password"
# exercise: write a script that asks the user for a 
# filename and create an empty file named after it
