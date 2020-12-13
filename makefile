all: README.md

README.md:
	echo "# This is the bash GUESSINGGAME project for The Unix Workbench course at Coursera." > README.md
	echo "\n## To find out more, visit [The Unix Workbench](https://www.coursera.org/learn/unix)" >> README.md
	echo "\n1. This README was generated :" >> README.md
	date "+%m/%d/%Y %H:%M:%S %Z" >> README.md
	echo "\n2. The main program is guessinggame.sh and the number of lines of code is :" >> README.md
	wc -l guessinggame.sh | egrep -o "[0-9]+" >> README.md

	echo "\n### What this program does:" >> README.md
	echo "\n#### guessinggame.sh program is a simple number guessing game:" >> README.md
	echo "- Unlike other number guessing games, the initial value is derived from the number of files in folders the program is ran from." >> README.md
	echo "- The user running the program should have read permissions in the directory for the program to count the number of files and folders." >> README.md
	echo "- The program will check if a valid integer is entered and prompt the user if it is not valid and try again." >> README.md
	echo "- The program will tell the user if the number is too high and prompt the user to try again." >> README.md
	echo "- The program will tell the user if the number is too low and prompt the user to try again." >> README.md
	echo "- The program will tell the user if they have correctly guessed the number and end the program." >> README.md
	echo "\n" >> README.md

	echo "\n## Requirements of the assignment:" >> README.md
	echo "\n####GUESSINGGAME.SH" >> README.md
	echo "1. When the program starts the user should be asked how many files are in the current directory, and then the user should be prompted for a guess." >> README.md
	echo "2. If the user's answer is incorrect the user should be advised that their guess was either too low or too high and then they should be prompted to try to guess again." >> README.md
	echo "3. If the user's guess is correct then they should be congratulated and the program should end." >> README.md
	echo "4. The program should not end until the user has entered the correct number of files in the current directory." >> README.md
	echo "5. The program should be able to be run by entering bash guessinggame.sh into the console." >> README.md
	echo "6. The program should contain at least one function, one loop, and one if statement." >> README.md
	echo "7. The program should be more than 20 lines of code but less than 50 lines of code." >> README.md
	echo "\n####makefile" >> README.md
	echo "1. The title of the project." >> README.md
	echo "2. The date and time at which make was run." >> README.md
	echo "3. The number of lines of code contained in guessinggame.sh." >> README.md
	echo "\n@DamagedDolphin" >> README.md

clean:
	rm README.md
