readme:
	touch README.md

	echo "# The title of the project" >>./README.md
	echo "the-unix-workbench-homework " >> ./README.md
	echo "### The date and time at which make was run " >> ./README.md
	echo `date  "+%Y-%m-%d %T"` >> ./README.md
	echo "###  The number of lines of code contained in guessinggame.sh.   " >> ./README.md
	echo  `cat guessinggame.sh | wc -l` >> ./README.md
