# ask the user to guess the number of files in the current directory
# until they guess the correct number. The user will be informed if their guess
# is too high or too low. Once the user guesses the correct number of files in 
# the current directory they should be congratulated.
function guessinggame {
	echo "How many files are in the current directory?"
	read response
	value=$(ls | wc -w)
	
	while [[ $value -ne  $response ]]
	do
		if [[ $value -lt $response ]]
		then
			echo "Too high"
		else
			echo "Too low"
		fi
	       	echo "How many files are in the current directory?"
        	read response
	done
	echo "Correct number"
}
guessinggame
