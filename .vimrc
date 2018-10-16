set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

:Plugin 'gmarik/Vundle.vim'
:Plugin 'scrooloose/nerdtree'
:Plugin 'townk/vim-autoclose'
:Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}


call vundle#end()            " required


set ts=4
set expandtab
set shiftwidth=4
"PEP8
au BufRead,BufNewFile *.py
   \ set tabstop=4 |
   \ set softtabstop=4 |
   \ set shiftwidth=4 |
   \ set textwidth=79 |
   \ set expandtab |
   \ set autoindent |
   \ set fileformat=unix
"C
au BufRead,BufNewFile *.c
    \ set ts=4 |
    \ set shiftwidth=4 |
    \ set autoindent |
    \ set smartindent |
    \ set expandtab
"Latex
au BufRead,BufNewFile *.tex

" FLAG WHITESPACE
let python_highlight_all=1
syntax on
highlight BadWhitespace ctermbg=red guibg=darkred
au BufRead,BufNewFile *.py,*.pyw,*.c,*.h
match BadWhitespace /\s\+$/
" UTF-8
set encoding=utf-8


" Nerd Tree Settings
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree


" Add line Numbering
set number relativenumber
if has("autocmd")
    augroup templates
        autocmd BufNewFile *.c 0r ~/.vim/templates/skeleton.c
        autocmd BufNewFile *.h 0r ~/.vim/templates/skeleton.h
        autocmd BufNewFile *.tex 0r ~/.vim/templates/skeleton.tex
        autocmd BufNewFile Makefile 0r ~/.vim/templates/Makefile
    augroup END
endif

" Adding support for NERDTree auto start
autocmd vimenter * NERDTree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | endif
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" my keymaps
inoremap <C-B> fun_name()<cr>{<cr><cr>}
