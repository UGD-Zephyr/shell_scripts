# Programmer: Per Stoor
# Date: 2022-07-17
# Last changed: 2022-07-17
# Type of script: Practicing loops in bash scripts.

#!/usr/bin/bash

loop_counter1=1
name_of_directory="test_directory"
file_path1="/mnt/c/WSL_Programming/Bash Folder/Bash Scripts"
file_path2="/mnt/c/WSL_Programming/Bash Folder/Bash Scripts/test_directory/10.txt"

mkdir "$file_path1/$name_of_directory"

for ((loop_counter1 = 1; loop_counter1 <= 10; loop_counter1++))

do	touch "$file_path1/$name_of_directory/$loop_counter1.txt"

done

if (test -f "$file_path2"); then

	printf "10.txt exists.\n"
	printf "deleting file...\n"
	rm "$file_path2"
	printf "file deleted.\n"

fi	

# END OF SCRIPT
