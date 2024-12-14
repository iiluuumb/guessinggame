# Makefile to create README.md based on the given instructions

README.md: guessinggame.sh
	@echo "# Guessing Game" > README.md
	@echo "Date and Time: $(shell date)" >> README.md
	@echo "Number of lines in guessinggame.sh: $(shell wc -l < guessinggame.sh)" >> README.md
	@echo "## Description" >> README.md
	@echo "This project involves a simple guessing game implemented in Bash." >> README.md
	@echo "Run the guessinggame.sh script and guess the number of files in the current directory." >> README.md
	@echo "The script will inform you if your guess is too high or too low, and will congratulate you when you guess correctly." >> README.md

