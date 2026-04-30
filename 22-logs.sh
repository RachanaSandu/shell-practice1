#!/bin/bash

# in this script we use functions to reduce code, and make the script simple..

# check the user information $ id
# check root user information $ sudo id
# check only user id $ id -u
 
USERID=$(id -u) 
# let,s create some variables for colors
# R means Red, G means Green, Y means Yellow, N means Normal color.
# give variable where you want that variable color, and give $N where you have to enough that color, and remaining script will be in normal color.
# -e for enable color.
# $R for error, it will show in red color
# $G for success, it will show in green color
# $Y for if it is already installed, it will show in yellow color
R="\e[31m"    
G="\e[32m"
Y="\e[33m"
N="\e[0m"
LOGS_FOLDER="/var/log/shellscript-logs"
SCRIPT_NAME=$(echo $0 | cut -d "." -f1  # $0 represent script name
LOG_FILE="$LOGS_FOLDER/$SCRIPT NAME.log"
mkdir -p $LOGS_FOLDER
echo "script startrd executing at : $(date)" &>>$LOG_FILE

if [ $USERID -ne 0 ]
then 
  echo -e "$R ERROR:: please run this script with root access $N" &>>$LOG_FILE
  exit 1 # give otherthan 0 upto 127
else  
  echo "you are running this script with root access" &>>$LOG_FILE
fi


# validate functions takes input as exit status, what command they tried to install
# $1 is equal to 0 then install $2..
VALIDATE(){ 
  if [ $1 -eq 0 ]  
  then 
    echo -e "Installing $2 is ... $G SUCCESS $N" &>>$LOG_FILE
else
   echo -e "Installing $2 is ... $R FAILURE $N" &>>$LOG_FILE
   exit 1
fi
}

dnf list installed mysql  &>>$LOG_FILE

if [ $? -ne 0 ] 
then
  echo "mysql is not installed...going to install it"  &>>$LOG_FILE # then do install 
  dnf install mysql -y &>>$LOG_FILE  # run this script with root access using sudo command like sudo su 19-functions.sh
VALIDATE $? "mysql"   # VALIDATE is a function, function name should give with capital letters.
else
  echo -e "Nothing to do mysql ... $Y already installed $N" &>>$LOG_FILE # else nothing to install
fi


dnf list installed python3  &>>$LOG_FILE

if [ $? -ne 0 ]  
then
  echo "python3 is not installed...going to install it" &>>$LOG_FILE # then do install 
  dnf install python3 -y &>>$LOG_FILE # run this script with root access using sudo command like sudo su 19-functions.sh
VALIDATE $? "python3"
else
  echo -e "Nothing to do python3 ... $Y already installed $N"  &>>$LOG_FILE
fi


dnf list installed nginx  &>>$LOG_FILE

if [ $? -ne 0 ] 
then
  echo "nginx is not installed...going to install it" &>>$LOG_FILE  # then do install 
  dnf install nginx -y &>>$LOG_FILE # run this script with root access using sudo command like sudo su 19-functions.sh
VALIDATE $? "nginx"
else
  echo -e "Nothing to do nginx ... $Y already installed $N" &>>$LOG_FILE  
fi

