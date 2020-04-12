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

