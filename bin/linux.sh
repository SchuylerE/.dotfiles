#!/bin/bash

#if the operating type is Linux, the phrase "operating system's name is Linux". If not, an error messaege will be placed in the 'linuxsetup.log' file and exit the program. 
if [ $(uname) = 'Linux' ]; then 
	echo "Operating system's name is $(uname)"
else 
	uname 2> linuxsetup.log 
	exit
fi 

#makes a directory named "TRASH" 
mkdir -p ~/.TRASH/ 

#makes a '.vimrc' file in the home directory
touch ~/.vimrc 

#renames '.vimrc' to '.bup_vimrc' and outputs the message ".vimrc was changed to .bup_vimrc" into linux setup.log
if [ -f ~/.vimrc ]; then 
	mv ~/.vimrc ~/.bup_vimrc | echo ".vimrc was changed to .bup_vimrc" >> linuxsetup.log 
fi 

#overwrites the output of 'etc/vimrc' into '~/.vimrc'
cat etc/vimrc > ~/.vimrc 

#appends "source ~/.dotfiles/etc/bashrc_custom" to the last line of '~/.bashrc'
echo "source ~/.dotfiles/etc/bashrc_custom" >> ~/.bashrc

