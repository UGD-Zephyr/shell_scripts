# Programmer: Per Stoor
# Date: 2022-09-03
# Last changed: 2022-10-01
# Type of script: Template for programming / scripting files.

#!/usr/bin/bash

TODAYS_DATE=$(date +%F)

printf "Programming language: "
read user_input

# C code template
if  [ $user_input == 'c' ] || 
    [ $user_input == 'C' ]
then
	printf "Filename: "
	read file_name
	touch "$file_name.c"
	printf "/* Programmer: Per Stoor\n" 		        >> $file_name.c
	printf " * Date: $TODAYS_DATE\n" 		            >> $file_name.c
	printf " * Last changed: $TODAYS_DATE\n"            >> $file_name.c
	printf " * Type of program: \n" 			        >> $file_name.c
	printf " */\n"	 				                    >> $file_name.c
	printf "\n"					                        >> $file_name.c
	printf "#include <stdio.h> \n" 			            >> $file_name.c
	printf "#include <stdlib.h> \n"	 		            >> $file_name.c
    printf "\n"					                        >> $file_name.c
	printf "int main(int argc, char *argv[]){ \n" 	    >> $file_name.c
	printf "\n"					                        >> $file_name.c
	printf "\n"					                        >> $file_name.c
	printf "return 0;\n" 				                >> $file_name.c
	printf "} \n" 					                    >> $file_name.c

	vim $file_name.c

# Python code template
elif    [ "$user_input" = "python" ] || 
        [ "$user_input" = "Python" ] || 
        [ "$user_input" = "PYTHON" ] || 
        [ "$user_input" = "Py" ] || 
        [ "$user_input" = "PY" ] || 
        [ "$user_input" = "py" ]
then 

	printf "Filename: "
    read file_name
	touch "$file_name.py"
	printf "# Programmer: Per Stoor\n" 		            >> $file_name.py
	printf "# Date: $TODAYS_DATE\n" 		            >> $file_name.py
	printf "# Last changed: $TODAYS_DATE\n"             >> $file_name.py
	printf "# Type of program: \n" 			            >> $file_name.py
	printf "\n"	 				                        >> $file_name.py

	vim $file_name.py

# PowerShell code template
elif    [ "$user_input" = "PowerShell" ] || 
        [ "$user_input" = "powershell" ] || 
        [ "$user_input" = "POWERSHELL" ] || 
        [ "$user_input" = "Powershell" ] || 
        [ "$user_input" = "ps1" ] || 
        [ "$user_input" = "Ps1" ] || 
        [ "$user_input" = "PS1" ]
then 

	printf "Filename: "
    read file_name
	touch "$file_name.ps1"
	printf "# Programmer: Per Stoor\n" 		            >> $file_name.ps1
	printf "# Date: $TODAYS_DATE\n" 		            >> $file_name.ps1
	printf "# Last changed: $TODAYS_DATE\n"             >> $file_name.ps1
	printf "# Type of script: \n" 			            >> $file_name.ps1
	printf "\n"	 				                        >> $file_name.ps1

	vim $file_name.ps1


# When template does not exist
else
	printf "Sorry, I don't know that programming language yet. :(\n"
	printf "Please try again later.\n"
	printf "Ending script...\n"
fi
# END OF SCRIPT
