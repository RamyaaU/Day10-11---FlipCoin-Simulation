#! /bin/bash

# Flip a coin
Head=0
Tail=0
read -p "Enter how many times the coin should be flipped: " n

for ((i=0; i<$n; i++ ))
{
        FLIP=$((RANDOM%2))
        if [ $FLIP -eq 0 ]
        then
                echo "TAIL"
                ((TAIL++))
        else
                echo "HEAD"
                ((HEAD++))
        fi
}


echo "Heads: " $HEAD
echo "Tails: " $TAIL

if [ $HEAD -eq $TAIL ]
then 
	echo "It is a tie"
elif [ $HEAD -gt $TAIL ]
then 
	echo "Heads won by $(($HEAD-$TAIL)) times"
else
	echo "Tails won by $(($TAIL-$HEAD)) times"
fi

