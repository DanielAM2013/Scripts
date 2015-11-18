#!/bin/bash


if [ -n "$Config" ]
then
	mkdir -p ~/.vim
	mkdir -p ~/.vim/myvim
	cp ~/Templates/Vim/.vimrc ~/.vimrc
	ln -sf ~/Templates/Vim/myconf.vim ~/.vim/myvim/myconf.vim
fi;







