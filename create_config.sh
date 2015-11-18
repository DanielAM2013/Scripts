#!/bin/bash

Arquivos=/media/Files
export Home=$Arquivos/Home
export Scripts=$Home/Scripts

if [ -z "$Config" ]
then
	ln -sf $Arquivos/{Documents,Desktop,Pictures,Videos,Music,Templates,Scripts,workspace} ~/
	echo "$Config";
	echo "export Config=true" >> ~/.bashrc;
	echo "source $Home/Scripts/create_config.sh" >> ~/.bashrc;
	exit;
fi

export PATH=$PATH:$Scripts
source $Scripts/args/Variables
