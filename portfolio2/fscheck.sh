#!/bin/bash
read -p 'Enter a file name: ' file      #prompt user for file name

getprop() {                             # declares a new function called getprop
    size=$(du -h $1 | awk '{print $1}') #Check file size and uses awk to extract only that data
    Wcount=$(wc -w $1 | awk '{print $1}') #Check wordcount and uses awk to extract only that data
    modtime=$(du --time --time-style="+%d-%m-%Y %T" $1 | awk '{print $2, $3}') #Check last mod time in a specific format and uses awk to extract only that data

    echo "The file $1 contains $Wcount words and is $size in size and was last modified $modtime" #Prints the results in a readable format to the terminal.
}                                       #End of the function

getprop $file                           #New declared funtion run on the users inputed file.

exit 0