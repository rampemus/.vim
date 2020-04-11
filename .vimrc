set number
syntax on
colorscheme onedark
set tabstop=4
set autoindent
set expandtab
set foldcolumn=1
set softtabstop=4
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
packadd typescript-vim

" No backups
set nobackup
set nowb
set noswapfile

set wrap

map <left> <C-w><left>
map <right> <C-w><right>
map <S-right> s
map <S-left> :wq<CR>
