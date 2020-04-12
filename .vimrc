set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'othree/html5.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

" *** OWN SETTINGS START FROM HERE ***
set number
syntax on
colorscheme onedark
"set tabstop=2
"set autoindent
"set expandtab
"set foldcolumn=1
"set softtabstop=2
set showmatch
set incsearch
set hlsearch
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
nmap ö /
nmap ä ?
imap jj <esc>
imap kkk <esc>
nnoremap <tab> >>
inoremap <tab> <C-t>
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>
"packadd typescript-vim

" Indenting
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab

" No backups
set nobackup
set nowb
set noswapfile

set wrap

map <S-left> :q<cr>
map <S-right> s<cr>
map <S-h> <C-w><left>
map <S-l> <C-w><right>

set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" Indenting and closing tags
set autoindent

