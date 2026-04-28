#!/bin/bash

# check the user information $ id
# check root user information $ sudo id
# check only user id $ id -u
 
USERID=$(id -u) 

if [ $USERID -ne 0 ]
then 
  echo "ERROR:: please run this script with root access"
  exit 1 #give otherthan 0 upto 127
else  
  echo "you are running this script with root access"
fi

  dnf list installed mysql  

# check already installed or not. if installed $? is 0, then
# if not installed $? is not 0. expression is true 
# we can write script with if(condition) within if(condition) again
if [ $? -ne 0 ] # if it didn't installed 
then
  echo "Mysql is not installed...going to install it"  # then do install 
 dnf install mysql -y  # run this script with root access using sudo command like sudo su 17-install-command.sh
  if [ $? -eq 0 ]  # checking installed or not
  then 
    echo "Installing MYSQL is ...SUCCESS"
else
   echo "Installing MYSQL is ...FAILURE"
   exit 1
   fi
else
  echo "Mysql is already installed...Nothing to do"  # else nothing to install
fi
  