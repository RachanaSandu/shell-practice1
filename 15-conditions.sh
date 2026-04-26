#!/bin/bash

#define a variable 'raining'
raining=true

#check condition
if[ "$raining" = true ]; then
  echo "take umbrella"
else
  echo "no need to take umbrella"
fi      #fi means stops the program
