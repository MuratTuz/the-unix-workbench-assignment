#!/usr/bin/env bash 
#File: guessinggame.sh

echo "Guess how many files there are in the current directory, add your guess then press Enter:" 

function guess {

read response

filenumber=$(ls -al | grep '^-' | wc -l) 

if [[ $response -eq $filenumber ]]
then 
        echo "Congratulations! you guessed the right number of files!"
fi
while [[ $response -ne $filenumber ]]
do
	if [[ $response != [[:digit:]] ]]
	then
	echo "You did not enter a number, please add your guess number and try again"
        guess
	elif [[ $response -lt $filenumber ]] 
        then 
                echo "The number $response you have entered is too low, try again and press Enter:" 
                guess
        else
                echo "The number $response you have entered is too high, try again and press Enter:"
                guess
	fi
	
done
}

guess

echo "End of program" 

