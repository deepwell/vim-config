#!/bin/bash
VC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

#remove existing vim config
rm ~/.vimrc
rm -rf  ~/.vim

# redirect vim dotfiles to vim-config working directories
ln -fns ${VC_HOME}/vimrc ~/.vimrc
ln -fns ${VC_HOME}/vim ~/.vim

# install pathogen
mkdir -p ${VC_HOME}/vim/autoload ${VC_HOME}/vim/bundle
curl -Sso ${VC_HOME}/vim/autoload/pathogen.vim https://raw.github.com/tpope/vim-pathogen/master/autoload/pathogen.vim

# install bundles
while read bundle
do
  bundles+=("$bundle")
done < ${VC_HOME}/bundles.cfg

## cd into bundles directory to preserve git repo name
cd ${VC_HOME}/vim/bundle
for i in ${bundles[@]}; do
  git clone $i
done
cd ${VC_HOME}

# add vim-config settings
echo -e "\n# vim-config" >> ~/.bash_profile
echo "export PATH=\$PATH:${VC_HOME}/bin" >> ~/.bash_profile 
echo "alias sv='sudo vim'" >> ~/.bash_profile
echo "alias v='vim'" >> ~/.bash_profile
echo "alias vb='cd ${VC_HOME}/vim/bundle;ls'" >> ~/.bash_profile
echo "alias vc='cd ${VC_HOME};ls'" >> ~/.bash_profile
echo "alias vr='vim ${VC_HOME}/vimrc'" >> ~/.bash_profile
