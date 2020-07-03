#!/bin/bash -x

declare -A flip
declare -A Newflip
declare -A final
head=0
tail=0
nhead=0
ntail=0
countHH=0
countHT=0
countTH=0
countTT=0
read -p "How many times to Flip: " num

for ((i=0; i<$num; i++ ))
{
	if [ $((RANDOM%2)) -eq 0 ]
	then
		echo "HEADS"
		((head++))
		flip[$i]="H"
	else
		echo "TAILS"
		((tail++))
		flip[$i]="T"
	fi
}

for ((j=0; j<$num; j++ ))
{
        if [ $((RANDOM%2)) -eq 0 ]
        then
                echo "HEADS"
                ((nhead++))
                Newflip[$j]="H"
        else
                echo "TAILS"
                ((ntail++))
                Newflip[$j]="T"
        fi
}

echo "heads: " $head
echo "tails: " $tail
echo "newhead: " $newhead
echo "newtail: " $newtail


echo "Dict1 : ${flip_value[@]}"
echo "Dict2 : ${flip_Newvalue[@]}"
for (( k=0; k<$num; k++ ))
{
	echo "final loop " ${flip[$k]}
	echo "final new loop" ${Newflip[$k]}
	final[$k]=${flip[$k]}${Newflip[$k]}
}

echo "final : ${final[@]}"

for ele in ${final[@]}
do
	if [ $ele == HH ]
	then
		((countHH++))
	fi
done


for ele in ${final[@]}
do
        if [ $ele == HT ]
        then
                ((countHT++))
        fi
done


for ele in ${final[@]}
do
        if [ $ele == TH ]
        then
                ((countTH++))
        fi
done


for ele in ${final[@]}
do
        if [ $ele == TT ]
        then
                ((countTT++))
        fi
done


echo "HH Count : $countHH"
echo "HT Count : $countHT"
echo "TH Count : $countTH"
echo "TT Count : $countTT"

echo "Doublet Combination HH %" $((countHH*100/num))
echo "Doublet Combination HT %" $((countHT*100/num))
echo "Doublet Combination TH %" $((countTH*100/num))
echo "Doublet Combination TT %" $((countTT*100/num))
