#!/bin/bash

# SHELL OPERATORS
# -gt means Greater than
# -lt means Less than
# -eq means Equal 
# -ne means Not equal

NUMBER=$1
if [ $NUMBER -lt 10 ]
then
  echo "Given number $NUMBER is less than 10"
else 
  echo "Given number $NUMBER is not less than 10"
fi 
