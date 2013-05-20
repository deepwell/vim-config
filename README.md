#vim-config
A vim configuration script.

##Installation
Run the install script to setup pathogen and redirect the .vimrc and .vim directories to work with vim-config.

    ./install.sh

Optionally, run the path script to add the vim-config/bin directory to the PATH.

    ./path.sh

Optionally, run the aliases script to install useful vim and vim-config shortcuts.

    ./aliases.sh && source ~/.bash_profile

*You can run all the above with this one liner.*

    ./install.sh && ./path.sh && ./aliases.sh && source ~/.bash_profile

#Aliases
These are handy shortcuts for working with vim and vim-config.

    ./aliases.sh

sv = sudo vim

v = vim

vb = cd ~/.vim/bundle

vrc = ~/.vimrc

##Commands
* TODO: create script to install bundles
* TODO: create a script to manage bundles in git sets, like package.json
* TODO: create a script to uninstall and reinstall all bundles (refreshing/updating all bundles)
