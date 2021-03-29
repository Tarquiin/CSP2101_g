#!/bin/bash
dir=$1  #stores directory inputed by the user
cd $dir #change drives to the directory selected by the user
Files=0 #create a default variable of 0 for count of files with size
ZeroFiles=0 #create a default variable of 0 for count of empty files
Dirs=0 #create a default variable of 0 for count of directories with size
ZeroDirs=0 #create a default variable of 0 for count of empty directories
list=$(ls) #create a list of all files and directories in the current directory

for i in $list; do  #Start looping through all items in the current directory
    if [[ -s $i && ! -d $i ]]; then          #if file exists and has a size >0, adds one to the Files variable      
        let Files=$Files+1   
    elif [[ -f $i && ! -s $i && ! -d $i ]]; then  #if file exists and has a size of 0, adds one to the ZeroFiles variable        
        let ZeroFiles=$ZeroFiles+1        
    elif [[ -d $i ]]; then #Enter an if statment if item is a directory
        DirCheck=$(test -z "$(ls -A $i)"; echo $?) #Checks to see if there is anything within the directory
        if [ $DirCheck -ge 1 ]; then    #If Directory is not empty, adds one to the Dirs variable
            let Dirs=$Dirs+1
        elif [ $DirCheck -eq 0 ]; then  #If Directory is empty, adds one to the ZeroDirs variable
            let ZeroDirs=$ZeroDirs+1
        fi
    fi
done    #Finish with the for loop of items in the current directory.
echo -e "The $dir directory contains:\n$Files files that contain data\n$ZeroFiles files that are empty\n$Dirs non-empty directories\n$ZeroDirs empty directories"
#^^ Above line echos to the terminal the results from the loop.
exit 0  #Exits the script.