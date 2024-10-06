# Programmer:          Per Stoor
# Date:                2022-09-03
# Last changed:        2024-02-10
# Type of script:      Template for programming / scripting files.

#!/usr/bin/bash

TODAYS_DATE=$(date +%F)

printf "Programming language: "
read user_input

# Bash code template
if    [ $user_input == "bash" ] || 
      [ $user_input == "Bash" ] || 
      [ $user_input == "BASH" ] || 
      [ $user_input == "shell" ]||
      [ "$user_input" = "Shell" ] || 
      [ "$user_input" = "SHELL" ] || 
      [ "$user_input" = "sh" ] || 
      [ "$user_input" = "SH" ]
then 

	printf "Filename: "
    read file_name
	touch "$file_name.sh"
    printf "#!/usr/bin/bash"                            >> $file_name.sh
	printf "\n"	 				                        >> $file_name.sh
	printf "\n"	 				                        >> $file_name.sh
	printf "# Programmer:           Per Stoor\n" 		>> $file_name.sh
	printf "# Date:                 $TODAYS_DATE\n"     >> $file_name.sh
	printf "# Last changed:         $TODAYS_DATE\n"     >> $file_name.sh
	printf "# Type of script:       \n" 			    >> $file_name.sh
	printf "\n"	 				                        >> $file_name.sh

	vim $file_name.sh

# C code template
elif    [ $user_input == "c" ] || 
        [ $user_input == "C" ]
then
	printf "Filename: "
	read file_name
	touch "$file_name.c"
	printf "/* Programmer:          Per Stoor\n" 		>> $file_name.c
	printf " * Date:                $TODAYS_DATE\n"     >> $file_name.c
	printf " * Last changed:        $TODAYS_DATE\n"     >> $file_name.c
	printf " * Type of program:     \n" 			    >> $file_name.c
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
	printf "# Programmer:           Per Stoor\n" 		>> $file_name.py
	printf "# Date:                 $TODAYS_DATE\n"     >> $file_name.py
	printf "# Last changed:         $TODAYS_DATE\n"     >> $file_name.py
	printf "# Type of program:      \n" 			    >> $file_name.py
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
	printf "# Programmer:           Per Stoor\n" 		>> $file_name.ps1
	printf "# Date:                 $TODAYS_DATE\n"     >> $file_name.ps1
	printf "# Last changed:         $TODAYS_DATE\n"     >> $file_name.ps1
	printf "# Type of script:       \n" 			    >> $file_name.ps1
	printf "\n"	 				                        >> $file_name.ps1

	vim $file_name.ps1

# Rust code template
elif    [ $user_input == "Rust" ] || 
        [ $user_input == "rust" ] || 
        [ $user_input == "RUST" ]
then
	printf "Filename: "
	read file_name
	touch "$file_name.rs"
	printf "/* Programmer:          Per Stoor\n" 		>> $file_name.rs
	printf " * Date:                $TODAYS_DATE\n"     >> $file_name.rs
	printf " * Last changed:        $TODAYS_DATE\n"     >> $file_name.rs
	printf " * Type of program:     \n" 			    >> $file_name.rs
	printf " */\n"	 				                    >> $file_name.rs
	printf "\n"					                        >> $file_name.rs
	printf "fn main(){ \n" 	                            >> $file_name.rs
	printf "\n"					                        >> $file_name.rs
	printf "} \n" 					                    >> $file_name.rs

	vim $file_name.rs

# When template does not exist
else
	printf "Sorry, I don't know that programming language yet. :(\n"
	printf "Please try again later.\n"
	printf "Ending script...\n"
fi
# END OF SCRIPT
