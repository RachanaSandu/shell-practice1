#!/bin/bash

echo"we no need to define the variable, shell will provide to us :$1"
echo"if you want all variables passed to script : $@"
echo"number of variables passed : $echo"
echo"present working directory : $PWD"
echo"home directory of the user who is running the script : $HOME"
echo"which user is running the script : $USER"
echo"PID(process instance ID) of the last command running  in background : $!"
echo"PID of the current script : $$"
