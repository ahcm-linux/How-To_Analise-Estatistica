#!/bin/bash

USER_ENTRY_1=$1

if [ -z "$USER_ENTRY_1" ] || [ "$USER_ENTRY_1" == "-h" ]
then
	echo "execute oferecendo o nome do projeto da seguinte forma:"
	echo "./criar-projeto.sh nome-do-projeto"
else
	mkdir -p ./$USER_ENTRY_1/{codes,data,outputs,references}

	for dir in ./$USER_ENTRY_1/*/
	do
		touch ./${dir%*/}/.keep

	done

	echo "references" > ./$USER_ENTRY_1/.gitignore

cat > ./$USER_ENTRY_1/README.md<<EOF
# Present your research objectives
# Introduce your data
# Introduce your statistical methods
# Describe all the necessary steps to run your code
EOF
fi
