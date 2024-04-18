#!/bin/bash
input=$1
reverse=""
len=${#input}
for ((i = $len - 1; i >= 0; i--)); do
        reverse= "$reverse${input:$i:1}"
        echo $reverse
        sleep 1
done
if [ "${input}" == "${reverse}" ]; then
        echo "$input is palindrome"
else
        echo "$input is not palindrome"
fi
