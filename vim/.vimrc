set number
set nowrap
set timeoutlen=1000 ttimeoutlen=0
set nocompatible
set incsearch
set hlsearch
set expandtab
set shiftwidth=2
set softtabstop=2
set tabstop=2

set term=xterm-256color
colorscheme bubblegum

"==============================================================
"+++++++++++++++++++++++++++Plugins++++++++++++++++++++++++++++
"==============================================================
"git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
Plugin 'mhinz/vim-startify'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'tpope/vim-fugitive'

call vundle#end()
filetype plugin indent on

"vim +BundleInstall! +BundleClean +q
"-------------------------------------------------------------
"nerdtree

nmap <silent> <C-E> :NERDTreeToggle<CR>
let NERDTreeShowHidden=1

"-------------------------------------------------------------
"airline

let g:airline_theme='bubblegum'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#formatter = 'unique_tail'
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>
:nnoremap <C-X> :bdelete<CR>

"-------------------------------------------------------------
"startify

let g:startify_lists = [
  \ { 'type': 'files',     'header': [   'MRU']},
  \ { 'type': 'sessions',  'header': [   'Sessions']},
  \ { 'type': 'bookmarks', 'header': [   'Bookmarks']},
  \ { 'type': 'commands',  'header': [   'Commands']},
  \]

"-------------------------------------------------------------

