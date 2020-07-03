#! /bin/bash

# Flip a coin
Head=0
Tail=0
declare -A flip
read -p "Enter how many times the coin should be flipped: " n

for ((i=0; i<$n; i++ ))
{
        FLIP=$((RANDOM%2))
        if [ $FLIP -eq 0 ]
        then
                echo "TAIL"
                ((TAIL++))
		flip[$i]="TT"
        else
                echo "HEAD"
                ((HEAD++))
		flip[$i]="HH"
        fi
}

echo "HEADS:" $HEAD
echo "TAILS:" $TAIL
echo "${flip[@]}"
echo "Singlet of HEADS and TAILS are : " $((HEAD*100/n)) $((TAIL*100/n))




















