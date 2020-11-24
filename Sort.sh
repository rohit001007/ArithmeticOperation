#!/bin/bash

echo -ne "\n"

read -p "Enter First Number : " a
read -p "Enter Second Number : " b
read -p "Enter Third Number : " c

echo -ne "\n The Numbers Are $a $b $c \n"

p=$(( a+(b*c) ))

echo -ne "\n The Result is $p \n"
