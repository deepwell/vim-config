#!/bin/bash
VC_HOME="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

echo -e "\n# vim-config" >> ~/.bash_profile
echo "export PATH=\$PATH:${VC_HOME}/bin" >> ~/.bash_profile
