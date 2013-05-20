#vim-config
A vim configuration script.

##Installation
Run the install script to:

* Redirect the .vimrc configuration file and the .vim directory to work with vim-config
* Install pathogen and configure the pathogen .vimrc settings
* Install each bundle listed in bundles.cfg
* Add various vim and vim-config aliases to the bash_profile

The following command sources the bash_profile to ensure included aliases can be used without restarting the shell.

    ./install.sh && source ~/.bash_profile

##Bundles
You can install bundles in the same way as you would normally do with pathogen (git clone into ~/.vim).

If you want to update a single bundle, just git pull the relevant bundle.

    vb; cd <bundle>;git pull

However, a better way is to add the git repo to bundles.cfg and run the refresh bundles script.

    ./refresh-bundles.sh

This script basically deletes all existing bundles and reinstalls each bundles listed in bundles.cfg.

    ./refresh-bundles.sh

##Aliases
These are handy shortcuts for working with vim and vim-config.

    ./aliases.sh

sv = sudo vim

v = vim

vb = cd ~/.vim/bundle

vrc = ~/.vimrc
