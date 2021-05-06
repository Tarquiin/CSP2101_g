#!/bin/bash
ass1=(12 18 20 10 12 16 15 19 8 11)     #Array 1
ass2=(22 29 30 20 18 24 25 26 29 30)    #Array 2
studentnum=0        #create counter for student result column output. (This is done avoid Student 1 being referred as Student 0, due to how the arrarys count from 0 first.)
len=${#ass1[@]}     #assign array length to a variable

for ((i=0; i<$len; i++)); do        #Start a Cstyle loop to count through arrary items up to the array length.
    sum=$(( ${ass1[$i]}+${ass2[$i]} ))  #Assigns the sum on each arrays relative designator, to a variable.
    let studentnum=$studentnum+1        #Adds 1 to the Studentnum variable for the output of the data
    echo -e "Student_$studentnum Result:\t$sum" #Prints the results in a readable format.
    
done        #exits loop.
exit 0