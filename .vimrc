
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'VundleVim/Vundle.vim'
Plugin 'ervandew/supertab'
Plugin 'dense-analysis/ale'
let g:ale_fix_on_save = 1
let g:ale_fixers = ['eslint', 'tslint']
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'alvan/vim-closetag'
Plugin 'Chiel92/vim-autoformat'
call vundle#end()            " required
filetype plugin indent on    " required

execute pathogen#infect()

" *** OWN SETTINGS START FROM HERE ***

" NERDTree stuff
set modifiable
nmap § :NERDTreeToggle<CR>

" NERDTress File highlighting
set number
syntax on
colorscheme onedark
let g:airline_theme='onedark'

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"set tabstop=2
"set autoindent
"set expandtab
set foldcolumn=1
"set softtabstop=2
set showmatch
set nohlsearch
set incsearch
set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>
nmap ö /
nmap ä ?
nmap + $
inoremap jj <esc>
inoremap kj <esc>
inoremap jk <esc>
inoremap kkk <esc>
inoremap ddd <esc>
nnoremap cw ciw
nnoremap dw diw
nnoremap cp cip

" inoremap <expr> <tab> strpart(getline('.'), col('.')-1, 1) == " " ? "a" : "b"
" TAB shortcuts

" inoremap <expr> <tab> ( index(endofblock, strpart(getline('.'), col('.'), 1)  ) >= 0 ) ? "<Esc>Ca<c-r>=TriggerSnippet()<cr><Esc>p" : ">>"
" ino <silent> <expr> <tab> ( len(getline('.')) == col('.')-1 && col('.') != 1 && strpart(getline('.'), col('.')-2, 1) != " " ) ? "<c-r>=TriggerSnippet()<cr>" : "  "
" inoremap <expr> <tab> ( len(getline('.')) > col('.') ) ? ">>" : "<c-p>" 
" inoremap <tab> <C-p>
nnoremap <tab> >>
" inoremap <tab> <C-t> " gets overwritten by supertab
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>

"fix backspace (char[-1] == ' ' && char[-2] == ' ' && col('.')%2 )
inoremap <expr> <BS> (strpart(getline('.'), col('.')-3, 2) == "  " && col('.')%2 != 0 ) ? "<BS><BS>" : "<BS>" 


cmap git Git
" ino <silent> <expr> <tab> ( len(getline('.')) == col('.')-1 && col('.') != 1 && strpart(getline('.'), col('.')-2, 1) != " " ) ? "<c-r>=TriggerSnippet()<cr>" : "  "

" check snipmate.vim line 16 for other settings
let g:SuperTabDefaultCompletionType = "<c-n>"
let g:SuperTabCrMapping = 0
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : " "

" nnoremap \ :NERDComment<cr>
" Indenting
set tabstop=2 softtabstop=0 expandtab shiftwidth=2 ""smarttab

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
vnoremap <Tab> >>
vnoremap <S-Tab> <<

highlight CursorLine term=bold cterm=bold guibg=Grey10
set cursorline

" Indenting and Quick brackets
set autoindent
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap <expr> ) strpart(getline('.'), col('.')-1, 1) == ")" ? "\<Right>" : ")"
inoremap (<CR> (<CR>)<ESC>$O
inoremap [ []<left>
inoremap <expr> ] strpart(getline('.'), col('.')-1, 1) == "]" ? "\<Right>" : "]"
inoremap [<CR> [<CR>]<ESC>$O
inoremap { {}<left>
inoremap <expr> } strpart(getline('.'), col('.')-1, 1) == "}" ? "\<Right>" : "}"
inoremap {<CR> {<CR>}<ESC>$O
let forbidden = ['""','()','[]','{}','''''']
inoremap <expr> <BS> ( index(forbidden, strpart(getline('.'), col('.')-2, 2)  ) >= 0 ) ? "<right><BS><BS>" : "<BS>"

" Quick tags
inoremap <expr> <CR> ( strpart(getline('.'), col('.')-2, 1) == ">" && strpart(getline('.'), col('.')-1, 1) == "<" ) ? "<CR><ESC>k$a<CR>" : "<CR>"
"
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.vue'
let g:closetag_xhtml_filenames = '*.xhtml,*.jsx'
let g:closetag_filetypes = 'html,xhtml,phtml'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
    \ 'typescript.tsx': 'jsxRegion,tsxRegion',
    \ 'javascript.jsx': 'jsxRegion',
    \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

" Line destruction (reverse J)
nnoremap K $?[^=:\)\]\>\&\|\?]\s<CR>lxi<CR><Esc>k:noh<CR>

" Move line up and down with mac
nnoremap √ :m .+1<CR>==
nnoremap ª :m .-2<CR>==
vnoremap √ :m '<-2<CR>gv=gvj
vnoremap ª :m '>+1<CR>gv=gv

" equal or greater/lower
inoremap ≤ <=
inoremap ≥ >=

" Delete lines with backspace normally
set backspace=indent,eol,start

" Mac os insert cursor
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[1 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode 

vnoremap <C-c> :w !pbcopy<CR><CR>
noremap <C-v> :r !pbpaste<CR><CR>

nnoremap S :w<CR>
inoremap SSS <Esc>:w<CR>
nnoremap Q :q!<CR>

