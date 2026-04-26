#!/bin/bash

# we no need to define the variable, shell will provide to us :$1 
# if you want all variables passed to script : $@ 
# number of variables passed : $# 
# present working directory : $PWD 
# home directory of the user who is running the script : $HOME 
# which user is running the script : $USER 
# PID(process instance ID) of the last command running  in background : $! 
# PID of the current script : $$ 


echo "All variables passed to the script:$@" #give values while run the script like devops azure
echo "Number of variables:$#" #what we gave values those values count will see here
echo "Script name:$0" #file name
echo "Current directory:$PWD"
echo "User running this script:$USER"
echo "Home directory of user:$HOME"
echo "PID of the script:$$" #even single command also has a PID(process instance ID)
sleep 10 &  #ps-ef|grep sleep  use this command while executing the script, in background it will have create PID.
echo "PID of last command in background:$!"  