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
