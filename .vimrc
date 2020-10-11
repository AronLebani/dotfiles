" Basics

set nocompatible
:filetype on	" Turn on filetype detection
syntax enable	" Turn on syntax highlighting
set showmatch	" Show matching brackets
set backspace=2	" Makes backspace behave as expected
set hlsearch	" Highlighting for search
set ruler	    " Show cursor lie and column position
set number      " Show line numbers
inoremap jj <Esc>

set background=dark

" Tab width

set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab

" Text wrapping

set wrap
set textwidth=120

" Tab settings by language

autocmd FileType javascript setlocal ts=2 sts=2 sw=2
autocmd FileType json setlocal ts=2 sts=2 sw=2
autocmd FileType yaml setlocal ts=2 sts=2 sw=2

" Spell check Markdown and Git commit messages

" autocmd FileType markdown setlocal spell
autocmd FileType gitcommit setlocal spell

" Plugins

" NERDTree
map <C-n> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
let NERDTreeShowHidden=1