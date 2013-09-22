#!/bin/sh

echo "You are happy?"
read answer

if [ "$answer" = "yes" ]; then
   echo "Smile :)"
else
   echo "Still Smile :)"
fi


# here are the other string comparison operators
# != , -n (not an empty string) , -z (an empty string)
