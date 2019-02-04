#!/bin/bash
# read the name of the user and print hello

echo "Yo! This is Vi Nguyen. What is your name?"
read name
echo "Welcome, Sir $name"

# single quotes prevent the expansion of the variable
echo 'Your name is now stored in $name'

# exercise: write a script that asks the user for a 
# filename and create an empty file named after it
