"" set nocompatible              " be iMproved, required
"" filetype off                  " required

" set the runtime path to include Vundle and initialize
"" call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"" set rtp+=~/.vim/bundle/Vundle.vim
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
"" Plugin 'VundleVim/Vundle.vim'
"" Plugin 'othree/html5.vim'

" All of your Plugins must be added before the following line
"" call vundle#end()            " required
"" filetype plugin indent on    " required
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

" Navigate split view
map <S-left> :q<cr>
map <S-right> s<cr>
map <S-h> <C-w><left>
map <S-l> <C-w><right>

highlight CursorLine term=bold cterm=bold guibg=Grey10
set cursorline

" Indenting
set autoindent

" Move line up and down with mac
nnoremap √ :m .+1<CR>==
nnoremap ª :m .-2<CR>==

inoremap √ <Esc>:m .+1<CR>==gi
inoremap ª <Esc>:m .-2<CR>==gi

vnoremap √ :m '<-2<CR>gv=gvj
vnoremap ª :m '>+1<CR>gv=gv

" Delete lines with backspace normally
set backspace=indent,eol,start

" Mac os insert cursor
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[1 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode 

" ubuntu/gnome terminal insert cursor
if has("autocmd")
  au VimEnter,InsertLeave * silent execute '!echo -ne "\e[2 q"' | redraw!
  au InsertEnter,InsertChange *
    \ if v:insertmode == 'i' |
    \   silent execute '!echo -ne "\e[6 q"' | redraw! |
    \ elseif v:insertmode == 'r' |
    \   silent execute '!echo -ne "\e[4 q"' | redraw! |
    \ endif
  au VimLeave * silent execute '!echo -ne "\e[ q"' | redraw!
endif

