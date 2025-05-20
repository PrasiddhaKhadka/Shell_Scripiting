#! /bin/bash

<< disclaimer
This is to understand the conditonal statement in bash
disclaimer 


read -p "Enter your age: " age
echo "Your age is "

if [[ $age == 15 ]];
then
    echo "You can vote after a year. wait till then!"
elif [[ age -ge 16 ]];
then
    echo "You can vote"
else
    echo "You are too young to vote"
fi


