#! /bin/bash

#styling
bold=$(tput bold)
normal=$(tput sgr0)


#tests if i want to look in subfolders or just current folder

if [[ "$1" == "--here" || "$1" == "-h" ]]; then
	output=$(find . -maxdepth 1 -iname "*"$2"*")
else
	output=$(find . -iname "*"$1"*")
fi

#tests if file exists and returns location

if test -z "$output"; then
	echo "File not found"
else
	echo "This phrase is found in the path(s): "
# loop through the files
	for element in "${output[@]}"
	do
    		echo "${bold}$element${normal}"
	done
fi
