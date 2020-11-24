#!/bin/bash

echo -ne "\n"

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

echo -ne "\n The Numbers Are $a $b $c \n"

p=$(( a+(b*c) ))
q=$(( (a*b)+c ))
r=$(( c+(a/b) ))
s=$(( a%(b/c) ))


echo -ne "\n The Result is $p \n"
echo -ne "\n The Result is $q \n"
echo -ne "\n The Result is $r \n"
echo -ne "\n The Result is $s \n"

declare -A res

res[0]=$p
res[1]=$q
res[2]=$r
res[3]=$s

echo -ne "\n Index Numbers : ${!res[@]}"

echo -ne "\n Index Numbers : ${res[@]}"

echo -ne "\n Array Before Sorting : ${res[@]}"

for((i=0; i<4; i++))
do
        for((j=i+1; j<4; j++))
        do
                if [ ${res[i]} -gt ${res[$((j))]} ]
                then
                        temp=${res[i]}
                        res[$i]=${res[$((j))]}
                        res[$((j))]=$temp
                fi
        done
done

echo -ne "\n Array After Sorting In Ascending Order : ${res[@]}\n"
