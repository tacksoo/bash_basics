#!/bin/sh

echo "Enter your first number"
read first
echo "Enter your second number"
read second
echo "Enter your third number"
read third


sum=$(( first+second+third ))

echo "The sum is $sum"

echo "Enter your width"
read width
echo "Enter your height"
read height
total=$(( width*height ))

echo "The total is $total"
# exercise: ask the user for the width and height and present total
# number of pixels
