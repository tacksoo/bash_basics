#!/bin/bash
name=Kris
echo "Hello $name, isn't it a beautiful day to git?"
echo "Exiting in..."
for (( counter=10; counter>0; counter--))
do
sleep 1s
echo -n "$counter "
done
printf "\n"