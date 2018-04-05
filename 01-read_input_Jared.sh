#!/bin/bash
# read the name of the user and print hello

echo "Hello! My name is Jared! What is your name?"
read name
echo "Welcome, $name, it is nice to meet you."

# single quotes prevent the expansion of the variable
echo 'Your name was stored in $name'

# exercise: write a script that asks the user for a 
# filename and create an empty file named after it

echo "What is your filename?"
read $filename
echo "Creating $filename"
touch $filename
echo "$filename successfully created"
echo "Thank you"