"utf
set encoding=UTF-8

"leader
let mapleader = " "

"nocompatible
set nocompatible

"whitespaces
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:␣
"set list

"tabs
"filetype indent off
filetype plugin on
set tabstop=2
set softtabstop=0
set shiftwidth=0
set expandtab
set smartindent

"line numbers
set number relativenumber

"search
set ignorecase
set smartcase
set hlsearch
set incsearch
:nmap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"

"backup,swap
set backupdir=~/.vim/.backup//
set directory=~/.vim/.swp//

"wrap
set wrap linebreak nolist
"set nowrap
set textwidth=120

"color guides
set cursorline
set colorcolumn=120

"caret ricing
set ttimeoutlen=10 "Понижаем задержку ввода escape последовательностей
let &t_SI.="\e[5 q" "SI = режим вставки
let &t_SR.="\e[3 q" "SR = режим замены
let &t_EI.="\e[1 q" "EI = нормальный режим
"1 - мигающий прямоугольник
"2 - обычный прямоугольник
"3 - мигающее подчёркивание
"4 - просто подчёркивание
"5 - мигающая вертикальная черта
"6 - просто вертикальная черта

"quickfix hotkeys
"map <F3> :cn<Cr>zvzz:cc<Cr>
"map <S-F3> :cp<Cr>zvzz:cc<Cr>
map <F3> :cn<Cr>
map <S-F3> :cp<Cr>
map <F4> :cp<Cr>

"buffers
set hidden
nmap <Leader>n :bn<Cr>
nmap <Leader>p :bp<Cr>
nmap <Leader>t :enew<CR>
nmap <Leader>q :bd!<CR>



"-------------------------------------------------------------------------------
"Plugins
"----------------------------

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

":PlugInstall
call plug#begin('~/.vim/plugged')

Plug 'mhinz/vim-startify'
Plug 'preservim/nerdtree'

Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'blueshirts/darcula'
Plug 'arcticicestudio/nord-vim'

Plug 'vim-airline/vim-airline'
"https://github.com/powerline/fonts
Plug 'ryanoasis/vim-devicons'
"https://github.com/ryanoasis/nerd-fonts#option-4-homebrew-fonts
"brew tap homebrew/cask-fonts
"brew cask install font-hack-nerd-font
"brew cask install font-dejavusansmono-nerd-font

Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim', {'type': 'opt'}

Plug 'drmingdrmer/vim-toggle-quickfix'

Plug 'christoomey/vim-system-copy'

call plug#end()



"-------------------------------------------------------------------------------
"Toggle quickfix
"----------------------------

nmap <Leader>l <Plug>window:quickfix:loop


"-------------------------------------------------------------------------------
"Colorscheme
"----------------------------

"colorscheme
"colorscheme nord
colorscheme darcula
"colorscheme sublimemonokai


"-------------------------------------------------------------------------------
"Airline
"----------------------------

let g:airline_powerline_fonts = 1
let g:airline#extensions#keymap#enabled = 0
let g:airline_section_z = "\ue0a1:%l/%L Col:%c"
let g:Powerline_symbols='unicode'


"-------------------------------------------------------------------------------
"NerdTree
"----------------------------

map <C-n> :NERDTreeToggle<CR>


"-------------------------------------------------------------------------------
"FZF
"----------------------------

nnoremap <C-p> :FZF<CR>
nnoremap <Leader>b :Buffers<CR>


"-------------------------------------------------------------------------------
"Startify
"----------------------------

let g:startify_session_dir = '~/.vim/sessions'

let g:startify_lists = [
  \ { 'header': ['   MRU'],            'type': 'files' },
  \ { 'header': ['   MRU '. getcwd()], 'type': 'dir' },
  \ { 'header': ['   Sessions'],       'type': 'sessions' },
  \ { 'header': ['   Bookmarks'],      'type': 'bookmarks' },
  \ { 'header': ['   Commands'],       'type': 'commands' },
\]















