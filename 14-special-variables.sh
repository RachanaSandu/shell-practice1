#!/bin/bash

# we no need to define the variable, shell will provide to us :$1 
# if you want all variables passed to script : $@ 
# number of variables passed : $# 
# present working directory : $PWD 
# home directory of the user who is running the script : $HOME 
# which user is running the script : $USER 
# PID(process instance ID) of the last command running  in background : $! 
# PID of the current script : $$ 


echo "All variables passed to the script:$@"
echo "Number of variables:$#"
