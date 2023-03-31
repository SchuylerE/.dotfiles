#!/bin/bash

#forces the removal of '~/.vimrc'
rm -f ~/.vimrc

#removes the 'source ∼/.dotfiles/bashrc custom’ line from '.bashrc'
sed -i "/bashrc_custom/d" ~/.bashrc 

#removes the 'TRASH' directory 
rm -rf ~/.TRASH/

