#------------------------vim--------------
rm -rf ~/.vimrc
rm -rf ~/.vim
git submodule init
git submodule update
ln -s $PWD/vim/.vimrc ~/.vimrc
ln -s $PWD/vim/.vim ~/.vim

#----------------------terminator---------
#rm -rf ~/.config/terminator/config
#ln -s $PWD/terminator/config ~/.config/terminator/config




