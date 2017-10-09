all: README.md

README.md:
	echo "**Guessing Game**" > README.md
	echo >> README.md
	echo -n "make was run at: " >> README.md
	date >> README.md
	echo -n "The number of lines in guessinggame.sh is: " >> README.md
	wc -l < guessinggame.sh >> README.md

clean:
	rm README.md
