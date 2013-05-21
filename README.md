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

##.vimrc
To edit your vimrc, use the vr alias.

    vr

##Bundles
You can install bundles in the same way as you would normally do with pathogen (git clone into ~/.vim/bundles).  However, the installation includes scripts that make managing bundles easier.

If you want to remove all existing bundles, run:

    remove-bundles

To remove all bundles and reinstall all bundles listed in bundles.cfg, run:

    update-bundles

To install all bundles listed in bundles.cfg, run:

    install-bundles

To edit bundles.cfg, use the provided alias vb.

    vb

##Aliases
These are handy shortcuts for working with vim and vim-config.

    ./aliases.sh

sv = sudo vim

v = vim

vb = cd ~/.vim/bundle

vrc = ~/.vimrc
