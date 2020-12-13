#!/bin/bash

function guess_game {
    echo "This is a number guessing game."
    load_number=$(ls | wc -l)
    while true
    do
        echo "How many files and directories do you think are in the current directory?"
        read user_value
        if ! [[ $user_value =~ [0-9] ]];then
            echo "That is not a valid number. Please try again."
        elif [[ $user_value -gt $load_number ]];then
            echo "Too high. Try again."
        elif [[ $user_value -lt $load_number ]];then
            echo "Too low. Try again."
        elif [[ $user_value -eq $load_number ]];then
            break
        fi
    done
    echo "Yes. The correct number of files and folders is " $load_number
}

guess_game
