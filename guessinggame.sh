#!/usr/bin/env bash 
#File: guessinggame.sh

echo "Guess how many files there are in the current directory, add your guess then press Enter:" 
guess

function guess {

read response

filenumber=$(ls -l | egrep -o ^-* | wc -l) 

if [[ $response -eq $filenumber ]]
then 
        echo "Congratulations! you guessed the right number of files!"
fi
while [[ $response -ne $filenumber ]]
do
        if [[ $response -lt $filenumber ]] 
        then 
                echo "The number $response you have entered is too low, try again and press Enter:" 
                guess
                else
                echo "The number $response you have entered is too high, try again and press Enter:"
                guess
        fi
done
}

echo "End of program" 

