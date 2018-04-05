#!/bin/bash
# read the name of the user and print hello

echo "Hello! What is your name"
read name
echo "Welcome, Elizabeth Haynie"

# single quotes prevent the expansion of the variable
echo 'Your name was stored in Elizabeth Haynie'

# exercise: write a script that asks the user for a 
echo "What is the empty file name?"
# filename and create an empty file named after it
read filename