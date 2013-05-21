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
Edit vimrc:

    vr

##Bundles
You can install bundles in the same way as you would normally do with pathogen (git clone into ~/.vim/bundles).  However, the installation includes scripts that make managing bundles easier.

Edit bundles.cfg:

    vb

Install all bundles listed in bundles.cfg:

    install-bundles

Remove all bundles:

    remove-bundles

Remove all bundles and install all bundles listed in bundles.cfg:

    update-bundles

##Aliases
sv = sudo vim

v = vim

vb = vim /path/to/vim-config/bundle.cfg

vc = cd /path/to/vim-config

vr = vim ~/.vimrc
