
#----------------------terminator---------
rm -rf ~/.config/terminator/config
ln -s $PWD/public/terminator/config ~/.config/terminator/config

#-------------------------bash------------
rm -rf ~/.bashrc
rm -rf ~/.bash_aliases
ln -s $PWD/decrypted/bash/.bashrc ~/.bashrc
ln -s $PWD/decrypted/bash/.bash_aliases ~/.bash_aliases


