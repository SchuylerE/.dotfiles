# My Dotfiles

These are my dotfile configuration files for different software in Bash.

## .vimrc

This is my custom .vimrc configuration for Vim.

## .bashrc

This is my custom .bashrc configuration for Bash.

## .gitignore 

This file tells Git to ignore certain files or directories, so they're not tracked and pushed to GitHub.

## bashrc_custom

This file contains custom alias commands.

## vimrc 

This file contains custom settings that turns on syntax, line numbers, autoindent, and the ruler. It also changes the color theme to 'elflord' and disables autotab when entering a new line, preventing runtime errors in the Makefile.

## linux.sh

This file check the operating system type, creates a directory named "TRASH", and makes a file named hidden file named '.vimrc' in the home directory. It then renames the '.vimrc' file to '.bup_vimrc' while outputting a confirmation message into linuxsetup.log. Finnaly, it overwrites the output of 'etc/vimrc' into the '.vimrc' file and adds the line "source ~/.dotfiles/etc/bashrc_custom" to the bottom of the '.bashrc file.

## cleanup.sh

This file removes '.vimrc' and '.TRASH' from the home directory, while also removing the line 'source ~/.dotfiles/bashrc_custom' from the .bashrc file.

## Makefile 

This file includes two targets from the 'linux.sh' and 'clean.sh' script. 'linux' is targetted towards 'clean' so that clean is run first. 
