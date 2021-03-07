
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" Markdown
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'
Plugin 'iamcco/mathjax-support-for-mkdp'
Plugin 'iamcco/markdown-preview.vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:mkdp_refresh_slow = 1


" Turn on syntax highlighting
syntax on

" Show line numbers
set number
set relativenumber

" Set indentation type depending on file type
set ts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
" autocmd Filetype java setlocal ts=4 sw=4 expandtab
" autocmd Filetype json setlocal ts=4 sw=4 expandtab
" autocmd Filetype css setlocal ts=4 sw=4 expandtab
" autocmd Filetype python setlocal ts=4 sw=4 expandtab
" autocmd BufNewFile,BufRead *.c,*.h setlocal ts=4 sw=4 expandtab
" autocmd Filetype bash setlocal ts=4 sw=4 expandtab

nnoremap di_ dT_dt_h 

set mouse=a



" Markdown stuff
let g:vim_markdown_folding_disabled = 1
set conceallevel=2
let g:vim_markdown_math = 1

autocmd Filetype markdown set tw=80

autocmd Filetype markdown hi htmlH1 cterm=bold ctermfg=Green
autocmd Filetype markdown hi htmlH2 cterm=bold ctermfg=Green



colorscheme delek

" Grey line numbers
hi LineNr ctermfg=DarkGrey


hi clear CursorLine
hi clear CursorLineNR
set cursorline
hi CursorLineNR cterm=bold


" Look into markdown preview
" Also maybe gvim or something that allows me to have more colour options
" (nvim?) 



