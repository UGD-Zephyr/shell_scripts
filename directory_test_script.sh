# Programmer: Per Stoor
# Date: 2022-07-24
# Last changed: 2022-07-25
# Type of script: Practicing manipulating files and folders
#
# Notes: The script doesn't create all the files the way I
# want them to be. All the directories are ok though...
#
# Notes: Script is working as intended now!

#!usr/bin/bash

filepath="/mnt/c/Users/ugdze/dirtest/dirtest_layer2"

for ((loop_counter1 = 1; loop_counter1 <= 10; loop_counter1++))

do	touch "$filepath/file_$loop_counter1.txt"

		if (($loop_counter1 <= 5))
	
		then mkdir -p "$filepath/folder_$loop_counter1"

			for ((loop_counter2 = 1; loop_counter2 <= 8; loop_counter2++))

			do touch "$filepath/folder_$loop_counter1/sub_file_$loop_counter2.txt"
		
			done

		fi
	
done

# END OF SCRIPT
