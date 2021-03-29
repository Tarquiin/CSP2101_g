#!/bin/bash
while true; do
    read -p "Welcome to the search log script, please enter a pattern you would like to search for: " pattern   #Prompt user for search pattern

    echo -e "1) Whole word search only\n2) Whole word and inverted search\n3) Anyword search\n4) Anyword and inverted search"   #Display search options

    read -p "Please select from the options above [1,2,3 or 4]: " opt  #Prompt user for search option they wish to use

    case $opt in    #Use Case statements for different search options
        1)
        count1=$(grep -cwi "$pattern" access_log.txt)   #Grab count of search results
        if [ $count1 -eq 0 ]; then                      #If no search results, display no matches
            echo 'No matches found'
            
        else
            echo "$count1 matches found" && grep -nwi "$pattern" access_log.txt #Echo number of search results, plus the results with their corresponding line number.
            
            fi;;
        2) 
        count2=$(grep -cwiv "$pattern" access_log.txt)  #Grab count of search results
        if [ $count2 -eq 0 ]; then                      #If no search results, display no matches
            echo 'No matches found'
            
        else
            echo "$count2 matches found" && grep -nwiv "$pattern" access_log.txt #Echo number of search results, plus the results with their corresponding line number.
            
            fi;;
        3) 
        count3=$(grep -cin "$pattern" access_log.txt)   #Grab count of search results
        if [ $count3 -eq 0 ]; then                      #If no search results, display no matches
            echo 'No matches found'
            
        else
            echo "$count3 matches found" && grep -ni "$pattern" access_log.txt #Echo number of search results, plus the results with their corresponding line number.
            
            fi;;
        4)
        count4=$(grep -civn "$pattern" access_log.txt)  #Grab count of search results
        if [ $count4 -eq 0 ]; then                      #If no search results, display no matches
            echo 'No matches found'
            
        else
            echo "$count4 matches found" && grep -niv "$pattern" access_log.txt #Echo number of search results, plus the results with their corresponding line number.
        
            fi;;
        *) echo 'Invalid selection';;   #Display invalid selection for an incorrect menu choice.
    esac
    read -p 'Enter any key to try again, or else enter 1 to exit: ' choice    #prompt user is they wish to try again?
    if [[ $choice -eq 1 ]]; then  #If statement to run if a '1' is entered, this will break the while loop.
        echo 'Goodbye!' && break
    else
        continue #else statement is nothing is entered upon the previous prompt, this will re-enter the while loop to try again.
    fi
done
exit 0  #Exits the program.
