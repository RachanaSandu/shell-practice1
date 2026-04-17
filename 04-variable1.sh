#!/bin/bash

PERSON1=Rachi #there should be no space before and after =(equal to)
PERSON2=Deepu
# "$"(dollar) represent it's a Variable..
# $PERSON1 and $PERSON2 are the Variables. $PERSON1 value is Rachi, $PERSON2 value is Pavi.
# while executing the code PERSON1 value substitute in $PERSON1, same as PERSON2.
# if i want to change name Pavi as Deepu.replace Pavi as Deepu.
# advantage of using variable is no need to replace all pavi words, just give word in PERSON2 or PERSON1, where you want to change the name(word).it will substitute the value
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