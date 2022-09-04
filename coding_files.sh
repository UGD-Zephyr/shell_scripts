# Programmer: Per Stoor
# Date: 2022-09-03
# Last changed: 2022-09-03
# Type of script: Template for programming / scripting files.

#!usr/bin/bash

TODAYS_DATE=$(date +%F)

printf "Programming language: "
read user_input

if [ $user_input == 'c' ] || [ $user_input == 'C' ]
then
	printf "Filename: "
	read file_name
	touch "$file_name.c"
	echo -e "/* Programmer: Per Stoor" 		>> $file_name.c
	echo -e " * Date: $TODAYS_DATE" 		>> $file_name.c
	echo -e " * Last changed: $TODAYS_DATE" 	>> $file_name.c
	echo -e " * Type of program: " 			>> $file_name.c
	echo -e " */"	 				>> $file_name.c
	echo -e " "					>> $file_name.c
	echo -e "#include <stdio.h> " 			>> $file_name.c
	echo -e "#include <stdlib.h> "	 		>> $file_name.c
	echo -e " "					>> $file_name.c
	echo -e "int main(int argc, char *argv[]){ " 	>> $file_name.c
	echo -e " "					>> $file_name.c
	echo -e " "					>> $file_name.c
	echo -e "return 0;" 				>> $file_name.c
	echo -e "} " 					>> $file_name.c
	vim $file_name.c
else
	printf "Sorry, I don't know that programming language yet. :(\n"
	printf "Please try again later.\n"
	printf "Ending script...\n"
fi
# END OF SCRIPT
