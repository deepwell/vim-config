#!/bin/bash
VC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo "alias sv='sudo vim'" >> ~/.bash_profile
echo "alias v='vim'" >> ~/.bash_profile
echo "alias vb='cd ${VC_HOME}/vim/bundle'" >> ~/.bash_profile
echo "alias vc='cd ${VC_HOME}'" >> ~/.bash_profile
echo "alias vrc='vim ${VC_HOME}/vimrc'" >> ~/.bash_profile
