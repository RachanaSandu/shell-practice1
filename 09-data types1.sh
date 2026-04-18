#!/bin/bash

NUMBER1=100
NUMBER2=200

TIMESTAMP=$(date)

echo "script executed at : $TIMESTAMP"

SUM=$(($NUMBER1+$NUMBER2))

echo "SUM of $NUMBER1 and $NUMBER2 is : $SUM"

# TIMESTAMP is a variable.
# if you want to know when the script was edited, you need to use 'date' command.
# shell will execute 'date' command then stored the value in 'TIMESTAMP' variable.

# i didn't give int=100, but Shell runs automatically no need to mention.
# here we use two braces, in that braces '($NUMBER1+$NUMBER2)' will adding values. 
# '$()' will store that added value. and next that $(($NUMBER1+$NUMBER2)) value will store in 'SUM' Variable.


