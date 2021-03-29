#!/bin/bash
sum=$(($1+$2+$3))                                       #Custom variable created to store sum of integers
if [ $sum -le 30 ]; then                                #If statement to se if the sum of integers is less then 30
    echo "The sum of $1 and $2 and $3 is $sum"          #Print to terminal if the sum is less than 30, and the sum that led to that.
else
    echo 'The sum exceeds the maximum allowable'        #If intergers sum is greater than 30, this line prints to say so.
fi                                                      #Finish statement used to correctly exit the script, exit 0 is not used as no other code is used.
exit 0
                                                   
