#!/bin/bash

# Function to ask the user to guess the number of files
guessing_game() {
    # Get the number of files in the current directory
    local num_files=$(ls -1 | wc -l)
    local guess=-1

    while [[ $guess -ne $num_files ]]; do
        echo "How many files are in the current directory?"
        read guess

        if [[ $guess -lt $num_files ]]; then
            echo "Your guess is too low. Try again!"
        elif [[ $guess -gt $num_files ]]; then
            echo "Your guess is too high. Try again!"
        else
            echo "Congratulations! You guessed the correct number of files!"
        fi
    done
}

# Start the guessing game
guessing_game

