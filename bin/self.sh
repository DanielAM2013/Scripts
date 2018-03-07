#!/bin/bash

# 0) set binary location
	# check if local bin is add to bashrc
	if [ -z $mysys ]
	then
		echo Envioriment not configurated
		if [ ! -d "$HOME/.bashrc.d" ]
		then
			echo Create bin directory
			mkdir -p $HOME/.bashrc.d
		fi
		chmod +x $(pwd)/bin/core.sh
		if [ ! -L "$HOME/bin/core.sh" ]
		then
			ln -sr $(pwd)/bin/core.sh $HOME/bin/core.sh
		fi
		core.sh
	else
		echo Envioriment is configurated
	fi

	#echo "export PATH=$PATH:$(pwd)/bin"
# 1) set variable files
