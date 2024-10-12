#!/usr/bin/bash

# Programmer:           Per Stoor
# Date:                 2024-10-12
# Last changed:         2024-10-12
# Type of script:       Adding my own public library to any 'cargo new' project.

todays_date=$(date +%F)
library_path="/home/[username]/Programming/02_rust/02_libraries_rust/public_library.rs"
library_destination="./src/lib/"

rm ./src/main.rs
mkdir ./src/lib
mkdir ./src/bin
touch ./src/bin/main.rs

printf "/* Programmer:          Per Stoor\n" 		>> ./src/bin/main.rs
printf " * Date:                $todays_date\n"     >> ./src/bin/main.rs
printf " * Last changed:        $todays_date\n"     >> ./src/bin/main.rs
printf " * Type of program:     \n" 			    >> ./src/bin/main.rs
printf " */\n"	 				                    >> ./src/bin/main.rs
printf "\n"					                        >> ./src/bin/main.rs
printf "fn main(){ \n" 	                            >> ./src/bin/main.rs
printf "\n"					                        >> ./src/bin/main.rs
printf "} \n" 					                    >> ./src/bin/main.rs

printf "\n"                                         >> Cargo.toml
printf "[lib]\n"                                    >> Cargo.toml
printf "name = \"public_library\"\n"                >> Cargo.toml
printf "path = \"src/lib/public_library.rs\"\n"     >> Cargo.toml

cp $library_path $library_destination

# END OF SCRIPT
