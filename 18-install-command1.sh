#!/bin/bash

# in this script we use same process multiple times to install MYSQL,PYTHON3,NGINX
# so,we have to work less code and more work. so we will use functions in next script.. 

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

  dnf list installed MYSQL  

# check already installed or not. if installed $? is 0, then
# if not installed $? is not 0. expression is true 
# we can write script with if(condition) within if(condition) again
if [ $? -ne 0 ] # if it didn't installed 
then
  echo "MYSQL is not installed...going to install it"  # then do install 
 dnf install MYSQL -y  # run this script with root access using sudo command like sudo su 18-install-command1.sh
  if [ $? -eq 0 ]  # checking installed or not
  then 
    echo "Installing MYSQL is ...SUCCESS"
else
   echo "Installing MYSQL is ...FAILURE"
   exit 1
   fi
else
  echo "MYSQL is already installed...Nothing to do"  # else nothing to install
fi


dnf list installed PYTHON3 

# check already installed or not. if installed $? is 0, then
# if not installed $? is not 0. expression is true 
# we can write script with if(condition) within if(condition) again
if [ $? -ne 0 ] # if it didn't installed 
then
  echo "PYTHON3 is not installed...going to install it"  # then do install 
 dnf install PYTHON3 -y  # run this script with root access using sudo command like sudo su 18-install-command1.sh
  if [ $? -eq 0 ]  # checking installed or not
  then 
    echo "Installing PYTHON3 is ...SUCCESS"
else
   echo "Installing PYTHON3 is ...FAILURE"
   exit 1
   fi
else
  echo "PYTHON3 is already installed...Nothing to do"  # else nothing to install
fi


dnf list installed NGINX 

# check already installed or not. if installed $? is 0, then
# if not installed $? is not 0. expression is true 
# we can write script with if(condition) within if(condition) again
if [ $? -ne 0 ] # if it didn't installed 
then
  echo "NGINX is not installed...going to install it"  # then do install 
 dnf install NGINX -y  # run this script with root access using sudo command like sudo su 18-install-command1.sh
  if [ $? -eq 0 ]  # checking installed or not
  then 
    echo "Installing NGINX is ...SUCCESS"
else
   echo "Installing NGINX is ...FAILURE"
   exit 1
   fi
else
  echo "NGINX is already installed...Nothing to do"  # else nothing to install
fi
  
  