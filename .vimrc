
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
"" Plugin 'othree/html5.vim'

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

execute pathogen#infect()
"imap <tab> <Plug>snipMateNextOrTrigger
"imap <tab> <Plug>SuperTabForward

" NERDTree stuff
:set modifiable
nmap § :NERDTreeToggle<CR>

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
set nohlsearch
set incsearch
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
nmap ö /
nmap ä ?
nmap 9 $
imap jj <esc>
imap kj <esc>
imap jk <esc>
imap kkk <esc>
nnoremap <tab> >>
"inoremap <tab> <C-t>
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
nmap <S-right> o<cr>
map <S-h> <C-w><left>
map <S-l> <C-w><right>

highlight CursorLine term=bold cterm=bold guibg=Grey10
set cursorline

" Indenting and Quick brackets
set autoindent
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap (<CR> (<CR>)<ESC>$O<Space><Space>
inoremap [ []<left>
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap [<CR> [<CR>]<ESC>$O<Space><Space>
inoremap { {}<left>
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap {<CR> {<CR>}<ESC>$O<Space><Space>

" Line destruction (reverse J)
nnoremap K $?[^=:\)\]\}\>\&\|\?]\s<CR>lxi<CR><Esc>k:noh<CR>

" Move line up and down with mac
nnoremap √ :m .+1<CR>==
nnoremap ª :m .-2<CR>==
" inoremap √ <Esc>:m .+1<CR>==gi
" inoremap ª <Esc>:m .-2<CR>==gi
vnoremap √ :m '<-2<CR>gv=gvj
vnoremap ª :m '>+1<CR>gv=gv

" Delete lines with backspace normally
set backspace=indent,eol,start

" Mac os insert cursor
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[1 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode 

" Save with enter 
nnoremap S :w<CR>
nnoremap Q :q!<CR>

