#!/bin/bash

if [ "$1"=="p" ]
then
	espeak -v en-us $2;
	trans en:pt $2
elif [ "$1"=="e" ]; then
	trans pt:en $2;
fi
