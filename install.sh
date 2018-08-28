#------------------------vim--------------
rm -rf ~/.vimrc
rm -rf ~/.vim
git submodule init
git submodule update
ln -s $PWD/vim/.vimrc ~/.vimrc
ln -s $PWD/vim/.vim ~/.vim

#-----------------------ya-disk-----------
rm -rf ~/.config/yandex-disk/config.cfg
ln -s $PWD/yadisk/config.cfg ~/.config/yandex-disk/config.cfg

#----------------------terminator---------
rm -rf ~/.config/terminator/config
ln -s $PWD/terminator/config ~/.config/terminator/config

