all: create write

create:
	@echo "Create README.md file"
	@touch README.md

write:
	@echo "Write title, runnging date and number of lines in README.md file"
	@echo "# Project Guessing Game" > README.md
	@echo "\n## Makefile was executed at: $(shell date +"%D %T")" >> README.md
	@echo "\n## The guessinggame.sh numeber of code lines: $(shell wc -l < guessinggame.sh)" >> README.md

