all: README.md

README.md:
	echo "# Guessing Game" > README.md
	echo "### Date" >> README.md
	date >> README.md
	echo "### Lines of code in program" >> README.md
	wc -l guessinggame.sh >> README.md
