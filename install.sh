#!/bin/bash
VC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# install pathogen
mkdir -p ${VC_HOME}/vim/autoload ${VC_HOME}/vim/bundle
curl -Sso ${VC_HOME}/vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# add pathogen settings to the vimrc
echo -e '\n"pathogen' >> ${VC_HOME}/vimrc
echo 'execute pathogen#infect()' >> ${VC_HOME}/vimrc

# redirect vim dotfiles to vim-config working directories
ln -fns ${VC_HOME}/vimrc ~/.vimrc
ln -fns ${VC_HOME}/vim ~/.vim
