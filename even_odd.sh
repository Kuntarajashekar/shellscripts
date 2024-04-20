#!/bin/bash
echo -n "Enter a number:"
read n
if [[ `expr $n == 0 ]]
then
echo "$n is Even number"
else
echo "$n is Odd number"
fi
