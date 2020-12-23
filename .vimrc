" nocompatible
set nocompatible

" utf
set encoding=UTF-8

" backup
if empty(glob('~/.vim/.backup'))
  silent !mkdir -p ~/.vim/.backup
endif
" https://vimhelp.org/editing.txt.html#backup
" если будешь выставлять, то проверь сколько будет весить для большого файла
" yes 'Some text' | head -n 1000000 > large
set nobackup " на маке не работает
set backupdir=~/.vim/.backup//

" swap
if empty(glob('~/.vim/.swap'))
  silent !mkdir -p ~/.vim/.swap
endif
set swapfile
set directory=~/.vim/.swap//

" undofile
if empty(glob('~/.vim/.undo'))
  " TODO сделать права 700
  silent !mkdir -p ~/.vim/.undo
endif
set noundofile " на маке не работает
set undodir=~/.vim/.undo//

" filebrowser pretty
let g:netrw_banner=0         " прячем стремный банер
let g:netrw_browse_split=0   " открыть в текущем окне
let g:netrw_altv=1           " открывать сплиты справа?
let g:netrw_liststyle=3      " tree view
" let g:netrw_list_hide=netrw_gitignore#Hide()
" let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" caret ricing
set ttimeoutlen=10 " Понижаем задержку ввода escape последовательностей
let &t_SI.="\e[5 q" " SI = режим вставки
let &t_SR.="\e[3 q" " SR = режим замены
let &t_EI.="\e[1 q" " EI = нормальный режим
" 1 - мигающий прямоугольник
" 2 - обычный прямоугольник
" 3 - мигающее подчёркивание
" 4 - просто подчёркивание
" 5 - мигающая вертикальная черта
" 6 - просто вертикальная черта

set wildmenu                 " автодополнение вообще всего?
set wrap 
set cursorline
set colorcolumn=121
set number "relativenumber
set hidden                   " чтобы можно было открывать новые если не сохранен текущий
set path+=**

" whitespaces
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<,space:␣
" set list

" statusline
set laststatus=2
set ruler

" tabs
" filetype indent off
filetype plugin on
set tabstop=2
set softtabstop=0
set shiftwidth=0
set expandtab
set smartindent

" search
set ignorecase
set smartcase
set hlsearch
set incsearch

"-------------------------------------------------------------------------------
"Plugins
"----------------------------

if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

":PlugUpgrade обновить саму плагильницу
":PlugInstall установить все че можно
":PlugUpdate  обновить все плагины
":PlugClean   удалить лишнее
call plug#begin('~/.vim/plugged')

" Colorschemas
Plug 'ErichDonGubler/vim-sublime-monokai'
Plug 'blueshirts/darcula'
Plug 'arcticicestudio/nord-vim'
Plug 'sjl/badwolf'
Plug 'morhetz/gruvbox'

" Language server
" Plug 'prabirshrestha/vim-lsp'       " это коре для следующей хуйни, само по себе типа тяжело юзать
" Plug 'mattn/vim-lsp-settings'       " хуй пойми, но похоже позволяет устанавливать langserver
" :LspInstallServer pyright-langserver
" sudo mkdir -p /usr/local/bin
" sudo ln -s /Users/username/.local/share/vim-lsp-settings/servers/pyright-langserver/pyright-langserver /usr/local/bin/pyright-langserver

" Linter
Plug 'dense-analysis/ale'

" Find
" требует установленный fzf
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }  " позволяет искать файлы :FZF
" требует установленный ripgrep
Plug 'junegunn/fzf.vim', {'type': 'opt'}             " искать по содержимому :Rg

call plug#end()

"-------------------------------------------------------------------------------
" Colorscheme
"----------------------------
colorscheme gruvbox

"-------------------------------------------------------------------------------
" Ale
"----------------------------

" let g:ale_fixers = {
" \   '*': [],
" \   'python': ['autopep8'],
" \   'json': ['jq'],
" \}
let g:ale_completion_enabled = 1
let g:ale_completion_delay = 0

"-------------------------------------------------------------------------------
" Kay binding
"----------------------------

function! CloseAllBuffersButCurrentSoft()
  let curr = bufnr("%")
  let last = bufnr("$")

  if curr > 1    | silent! execute "1,".(curr-1)."bd"     | endif
  if curr < last | silent! execute (curr+1).",".last."bd" | endif
endfunction

function! CloseAllBuffersButCurrentHard()
  let curr = bufnr("%")
  let last = bufnr("$")

  if curr > 1    | silent! execute "1,".(curr-1)."bd!"     | endif
  if curr < last | silent! execute (curr+1).",".last."bd!" | endif
endfunction

" leader default \
" let mapleader = " "

" buffers
nmap <Leader>k :bn<Cr>
nmap <Leader>j :bp<Cr>
nmap <Leader>l :ls<Cr>
nmap <Leader>t :enew<CR>
nmap <Leader>q :bd<CR>
nmap <Leader><S-q> :bd!<CR>

" quickfix hotkeys
nmap <Leader>c :cl<Cr>
nmap <Leader>g :cc 
map <F3> :cn<Cr>
map <S-F3> :cp<Cr>

nmap <silent><expr> <Leader>h (&hls && v:hlsearch ? ':nohls' : ':set hls')."\n"
nmap <Leader>w :call CloseAllBuffersButCurrentSoft()<CR>
nmap <Leader><S-w> :call CloseAllBuffersButCurrentHard()<CR>
map <Leader>r :e<Cr>
map <Leader><S-r> :e!<Cr>
map <Leader>e :Ex<Cr>
map <Leader>f :FZF<Cr>
map <Leader><S-f> :Rg<Cr>

" copy
noremap <Leader>y "*y
noremap <Leader>p "*p
noremap <Leader>Y "+y
noremap <Leader>P "+p

" run scripts
autocmd FileType python map <buffer> <F9> :w<CR>:exec '!python3.9' shellescape(@%, 1)<CR>
autocmd FileType python imap <buffer> <F9> <esc>:w<CR>:exec '!python3.9' shellescape(@%, 1)<CR>

" very magic
nnoremap / /\v
vnoremap / /\v
nnoremap ? ?\v
vnoremap ? ?\v

" ALE
map <Leader>b :ALEGoToDefinition<Cr>
map <Leader><S-b> :ALEFindReferences<Cr>
map <Leader>n :ALERename<Cr>









