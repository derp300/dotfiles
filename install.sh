rm -rf ~/.vimrc
rm -rf ~/.vim
git submodule init
git submodule update
ln -s $PWD/.vimrc ~/.vimrc
ln -s $PWD/.vim ~/.vim

