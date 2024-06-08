# Programmer:          Per Stoor
# Date:                2024-06-06
# Last changed:        2024-06-06
# Type of script:      Automating git status, git add, git commit and git push

# Notes:
# Things left to do are checking if there is a remote repository with
# git ls-remote, choose between git remote add origin main / git push
# -u <URL> or just a normal git push.

#!/usr/bin/bash

YELLOW='\033[1;33m'
DEFAULT='\033[0m'
echo -e "${YELLOW}Current git status:${DEFAULT}"
    git status
    printf "\n"

read -p $'\e[1;33mWould you like to add and commit all files? (Y/N): \e[0m' user_choice
    if [[ $user_choice == [yY] || $user_choice == [yY][eE][sS]  ]];
    then 
        echo "Adding and commiting files..."
        git add .
        git commit -m "Adding files."
        # git push
    else
        echo "Closing script..."
        exit 1
    fi
# END OF SCRIPT:
