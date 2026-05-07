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
SCRIPT_NAME=$(echo $0 | cut -d "." -f1) # $0 represent script name

LOG_FILE="$LOGS_FOLDER/$SCRIPT_NAME.log"
PACKAGES=("mysql" "python3" "nginx" "httpd")   # i give list of packages what ever packages i need in array formate using variable of PACKAGES.

mkdir -p $LOGS_FOLDER
echo "script startrd executing at : $(date)" | tee -a $LOG_FILE

# | tee -a $LOG_FILE this command using for output will store in log file and also show output in screen while run the script like (sudo sh 22-logs.sh)
# &>>$LOG_FILE this command using for if the output fail or success it will store in log file, after run the script if you want to see the output stored in log file give (cat /var/log/shellscript-logs/2-logs.log)
# 1 means success, 2 means failure &(append) means both fail and success 
if [ $USERID -ne 0 ]
then 
  echo -e "$R ERROR:: please run this script with root access $N" | tee -a $LOG_FILE
  exit 1 # give otherthan 0 upto 127
else  
  echo "you are running this script with root access" | tee -a $LOG_FILE
fi


# validate functions takes input as exit status, what command they tried to install
# $1 is equal to 0 then install $2..
VALIDATE(){ 
  if [ $1 -eq 0 ]  
  then 
    echo -e "Installing $2 is ... $G SUCCESS $N" | tee -a $LOG_FILE
else
   echo -e "Installing $2 is ... $R FAILURE $N" | tee -a $LOG_FILE
   exit 1
fi
}

# using for loop, this script has only taking these lines and these lines are enough if you want any number of packages.
# using for loop to reduce the lines and repeated code , making the script simple.

for package in ${PACKAGES[@]}   
  do 
   dnf list installed $packages &>>$LOG_FILE  # checking if the package is already installed or not
if [ $? -ne 0 ] 
then
   echo "$package is not installed...going to install it"  | tee -a $LOG_FILE #if package not installed already its going to install it.
  dnf install $package -y &>>$LOG_FILE  
VALIDATE $? "$package"   
else
  echo -e "Nothing to do $package ... $Y already installed $N" | tee -a $LOG_FILE  # if installed package already nothing to do
fi
  done
