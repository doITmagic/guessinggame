#!/bin/bash
# Bash script for guess the number of files in the current directory

files_nr=$(ls | wc -l)

calculate () {

    if [[ $files_nr -eq ${x} ]]
    then
        echo "Congratulations, you GUESSED the number of files in this directory, is ${x}."
        exit 0
    elif [[ $files_nr -gt ${x} ]]
    then
        echo "You entered ${x}, your guess is Less then the true number, just try to enter another number:"
    elif [[ $files_nr -lt ${x} ]]
    then
     echo "You entered ${x}, your guess is Greater then the true number, just try to enter another number:"
    fi
}

echo "Guess the number of files in this directory, please enter a number: "

while :
do

    read x
    calculate
done

