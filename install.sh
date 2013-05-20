#!/bin/bash
VC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# install pathogen
mkdir -p ${VC_HOME}/vim/autoload ${VC_HOME}/vim/bundle
curl -Sso ${VC_HOME}/vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# redirect vim dotfiles to vim-config working directories
ln -fns ${VC_HOME}/vimrc ~/.vimrc
ln -fns ${VC_HOME}/vim ~/.vim
