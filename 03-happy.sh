#!/bin/sh

echo "You are happy?"
read answer

if [ "$answer" = "yes" ]; then
   echo "Smile :)";
elif [ "$answer" = "no" ]; then
    echo "Cheer up :(";
elif [ "$answer" = "elephant" ]; then
    echo "You cray";
else
   echo "Still Smile :)"
fi

# here are the other string comparison operators
# != , -n (not an empty string) , -z (an empty string)

# exercise: write a script that prints whether today is
# the weekend or not
