#! /bin/bash

# Flip a coin 

HEAD=0
TAIL=0

for x in 1 
do 

FLIP=$(($RANDOM%2))

if [ $FLIP -eq 0 ]
then
	echo "TAIL"
else
	echo "HEAD"
fi
done
