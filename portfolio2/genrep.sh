#!/bin/bash
echo -e 'Attacks\t\tInstances(Q3)'  #Print out column titles
sed -e '1,4d' attacks.html | for i in [ grep '[0-9]' attacks.html ]; do #Deletes first few lines and starts a loop through the rows that only contains numbers.
    awk '/^$/{next}{printf $1"\t\t"}{sum=$2+$3+$4;printf sum"\n"}'  #AWK used only only lines that are not empty, prints the attack name and the sum of the 3 monthly figure.
done
exit 0