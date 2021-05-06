#!/bin/bash

cat usrpwords.txt | awk 'NR>1 { 
                        if (length($2)>=8&&$2~/[[:upper:]]+/&&$2~/[[:digit:]]+/)
                        {
                            print $2" - meets password strength requirements";next
                        }
                        {
                            print $2" - does NOT meet password strength requirements" 
                        }
                        }'
# The above uses an AWk condition statement to see if a password in column two contains at least 1 uppercase letter, 1 number, and be at least greater than or equal to 8 chars in length. 

exit 0

