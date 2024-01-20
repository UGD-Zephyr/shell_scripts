# Programmer:		Per Stoor
# Date:			    2023-11-18
# Last changed:		2024-01-20
# Type of script:	Shell script to activate gh auth login
#			        and ssh-key for working with GitHub.
#
# Notes:		    
#
# For ssh-add -l
# Could not open a connection to your authentication agent  -> $? = 2
# The agent has no identities                               -> $? = 1
# 256 SHA256...                                             -> $? = 0
#
# For ssh-add [PATH TO SSH KEY]
# Could not open a connection to your authentication agent  -> $? = 2
# Identity added: [path to private ssh key]                 -> $? = 0

#i/usr/bin/bash

printf "1. Log in to GitHub.\n"
printf "2. Log out from GitHub.\n"
printf "3. Add SSH-key to Agent.\n"

read -p "Selection: " user_choice

    if [ $user_choice == 1 ]; then
        printf "logging in to GitHub with [gh auth login]\n"
        printf "Please wait...\n"
            gh auth login --with-token < [PATH TO .txt file with token]
        printf "Login successful!\n"

    elif [ $user_choice == 2 ]; then
        printf "logging out of GitHub.\n"
        printf "Please wait...\n"
            gh auth logout

    elif [ $user_choice == 3 ]; then
        ssh-add [PATH TO SSH KEY]
            if [ $? == 2  ]; then
                eval $(ssh-agent -s)
                ssh-add [PATH TO SSH KEY]
            fi

    else
        printf "You did not enter 1, 2 or 3...\n"
    fi

# END OF SCRIPT
