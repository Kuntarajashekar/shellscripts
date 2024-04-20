#!/bin/bash
read n

for (( i=0, k=${#n}-1; i<=k; i++, k-- ))
do
    [[ ${n:$i:1} != ${n:$k:1} ]] && break
done

if (( i>k ))
then
    echo Give input is Palindrome
else
    echo Given input is Not Palindrome
fi
