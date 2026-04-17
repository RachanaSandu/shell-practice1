#!/bin/bash

PERSON1=$1 #there should be no space before and after =(equal to), its called DRY(Don't Repeat Yourself) principle.
PERSON2=$2
# "$"(dollar) represent it's a Variable..
# $PERSON1 and $PERSON2 are the Variables. 
# while executing the code PERSON1 value substitute in $PERSON1, same as PERSON2.
echo "$PERSON1::Hey $PERSON2,How are you?"
echo "$PERSON2::Hello $PERSON1, I am fine.How are you doing?"
echo "$PERSON1::I am fine too. When i get a job,I want to meet you."
echo "$PERSON2::Really? That will be very nice."
echo "$PERSON1::Yes,I will give you a party."
echo "$PERSON2::Wow,thank you."
echo "$PERSON1::We can go to a restaurant and enjoy."
echo "$PERSON2::Yes,we can eat good food and talk a lot."
echo "$PERSON1::We can also take photos together."
echo "$PERSON2::That will be a happy day."
echo "$PERSON1::First i will get a job,then i will meet you."
echo "$PERSON2::Yes,i am waiting for that day.."
# Variable is a container to hold the value, you can use it wherever you require.
# we will give values outside the code.
# i will send it from outside called args/arguments.
# you can give values using Arguments with space difference like value1 value2 etc.. you can give value whatever value you want.
# Shell stores value1 into $1 and value2 into $2.
