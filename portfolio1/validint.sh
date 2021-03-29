#!/bin/bash

while true; do                  #A loop is created here whilst true                                    
    
    read -p 'Please enter a two digit numeric code that is either equal to 20 or equal to 40: ' code    #User asked for input, this is stored as the'code' variable.
    if [[ $code -eq 20 ]] || [[ $code -eq 40 ]]; then       #If statement to check input is equal to either 20 OR 40.
        break                                               #This statement will break the while loop if passed as a correct input.
    else
        echo 'Invalid input, please try again!'             #Else, if an incorrect input is used, no matter what it is, the loop will continue until a correct input is used.
                                                            #The User is also asked to try again with another input.

    fi
done
echo "Thank-you, you have entered a valid input of $code!"   #Correct input message to be printed to the terminal.


exit 0                                                      #Exit statement to correctly temrinate the script after the user ha sbeen told they have entered a valid input