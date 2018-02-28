#!/bin/sh

echo "Enter your first number"
read first
echo "Enter your second number"
read second
echo "Enter your third number"
read third

sum=$(( first+second+third ))

echo "The sum is $sum"

echo "Enter your real height in person"
read realHeight
echo "Enter your weight"
read weight
total=$(( realHeight*weight ))
echo "The total is $total"

# exercise: ask the user for the width and height and present total
# number of pixels
