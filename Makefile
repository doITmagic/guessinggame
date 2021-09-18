all: create write

create:
	@echo "Create README.md file"
	@touch README.md

write:
	@echo "Write title, runnging date and number of lines in README.md file"
	@echo "Project Guessing Game" > README.md
	@date +"%D %T" >> README.md
	@wc -l < guessinggame.sh >> README.md
