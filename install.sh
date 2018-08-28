#------------------------vim--------------
rm -rf ~/.vimrc
rm -rf ~/.vim
git submodule init
git submodule update
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.vim ~/.vim

#-----------------------ya-disk-----------
rm -rf ~/.config/yandex-disk/config.cfg
ln -s $PWD/config.cfg ~/.config/yandex-disk/config.cfg

