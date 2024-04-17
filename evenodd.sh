#!/bin/bash
for X in {1..100}; do
    REM=$(expr $X % 2)
    if [ $REM -eq 0 ]; then
       echo "The value of X is $X and its an even number"
    else
       echo "The number is odd"
    fi
done
