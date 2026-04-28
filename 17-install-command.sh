#!/bin/bash

USERID=$(id -u)

if [ $USERID -ne 0 ]
then 
  echo "ERROR:: please run this script with root access"
  exit 1 #give otherthan 0 upto 127
else  
  echo "you are running this script with root access"
  fi

  dnf list installed mysql

  if [ $? -ne 0 ]
then
  echo "Mysql is not installed...going to install it"
 dnf install mysql -y

  if [ $? -eq 0 ]
  then 
    echo "Installing MYSQL is ...SUCCESS"
else
   echo "Installing MYSQL is ...FAILURE"
   exit 1
   fi
else
  echo "Mysql is already installed...Nothing to do"
fi
  