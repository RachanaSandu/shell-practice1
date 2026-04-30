#!/bin/bash

# in this script we use functions to reduce code, and make the script simple..

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


# validate functions takes input as exit status, what command they tried to install
# $1 is equal to 0 then install $2..
VALIDATE(){ 
  if [ $1 -eq 0 ]  
  then 
    echo "Installing $2 is ...SUCCESS"
else
   echo "Installing $2 is ...FAILURE"
   exit 1
fi
}

dnf list installed MYSQL  

if [ $? -ne 0 ] # if it didn't installed 
then
  echo "Mysql is not installed...going to install it"  # then do install 
  dnf install mysql -y  # run this script with root access using sudo command like sudo su 19-functions.sh
VALIDATE $? "MYSQL"   # VALIDATE is a function, function name should give with capital letters.
  if [ $? -eq 0 ]  
  then 
    echo "Installing MYSQL is ...SUCCESS"
else
   echo "Installing MYSQL is ...FAILURE"
else
  echo "Mysql is already installed...Nothing to do"  # else nothing to install
fi


dnf list installed PYTHON3  

if [ $? -ne 0 ]  
then
  echo "PYTHON3 is not installed...going to install it"  # then do install 
  dnf install PYTHON3 -y  # run this script with root access using sudo command like sudo su 19-functions.sh
VALIDATE $? "PYTHON3"
  if [ $? -eq 0 ]  
  then 
    echo "Installing PYTHON3 is ...SUCCESS"
else
   echo "Installing PYTHON3 is ...FAILURE"
else
  echo "PYTHON3 is already installed...Nothing to do"  
fi


dnf list installed NGINX  

if [ $? -ne 0 ] 
then
  echo "NGINX is not installed...going to install it"  # then do install 
  dnf install NGINX -y  # run this script with root access using sudo command like sudo su 19-functions.sh
VALIDATE $? "NGINX"
  if [ $? -eq 0 ]
  then 
    echo "Installing NGINX is ...SUCCESS"
else
   echo "Installing NGINX is ...FAILURE"
else
  echo "NGINX is already installed...Nothing to do"  
fi

