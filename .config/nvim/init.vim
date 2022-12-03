
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

" Commenting
Plugin 'tpope/vim-commentary'

" Autocomplete coc
Plugin 'neoclide/coc.nvim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

let g:mkdp_refresh_slow = 1


" Turn on syntax highlighting
syntax on

" Show line numbers
set number
set relativenumber


" Set filetypes
autocmd BufNewFile,BufRead,BufReadPost *.gs set ft=typescript


" Set indentation type depending on file type
set ts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
" autocmd Filetype java setlocal ts=4 sw=4 expandtab
" autocmd Filetype json setlocal ts=4 sw=4 expandtab
" autocmd Filetype css setlocal ts=4 sw=4 expandtab
" autocmd Filetype python setlocal ts=4 sw=4 expandtab
" autocmd BufNewFile,BufRead *.c,*.h setlocal ts=4 sw=4 expandtab
" autocmd Filetype bash setlocal ts=4 sw=4 expandtab

" Lets me visual select, yank, and delete snake-cased text (underscores)
vnoremap i_ T_ot_
nnoremap yi_ T_yt_
nnoremap di_ T_dt_


set mouse=a

set wrap linebreak

" Markdown stuff
let g:vim_markdown_folding_disabled = 1
set conceallevel=2
let g:vim_markdown_math = 1

let g:vim_markdown_conceal_code_blocks = 1

" autocmd Filetype markdown set tw=80

" Super and subscript
autocmd Filetype markdown hi Conceal ctermbg=none

" Headings
autocmd Filetype markdown hi htmlH1 cterm=bold ctermfg=46
autocmd Filetype markdown hi htmlH2 cterm=bold ctermfg=34
autocmd Filetype markdown hi htmlH3 cterm=bold ctermfg=22
autocmd Filetype markdown hi htmlH4 cterm=none ctermfg=22

" Inline code block
autocmd Filetype markdown hi mkdCode cterm=none ctermfg=228

" Multiline code block
autocmd Filetype markdown hi mkdCodeStart cterm=none ctermfg=244
autocmd Filetype markdown hi mkdCodeEnd cterm=none ctermfg=244
autocmd Filetype markdown hi mkdCodeDelimiter cterm=none ctermfg=244

" Math
autocmd Filetype markdown hi texMath cterm=none ctermfg=208


" Override defaults in colour scheme
autocmd ColorScheme * hi LineNr ctermfg=DarkGrey
autocmd ColorScheme * hi clear CursorLine
autocmd ColorScheme * set cursorline
autocmd ColorScheme * hi CursorLineNR cterm=bold ctermfg=White

" Background of intellisense window popup thingy
autocmd ColorScheme * hi Pmenu ctermbg=236 ctermfg=7

" Highlight red bg for trailing whitespaces when not in insert mode
autocmd ColorScheme * hi TrailingWhiteSpace ctermbg=red
autocmd ColorScheme * match TrailingWhiteSpace /\s\+$/
autocmd InsertEnter * hi TrailingWhiteSpace ctermbg=NONE
autocmd InsertLeave * hi TrailingWhiteSpace ctermbg=red

" A better red for comments
" autocmd ColorScheme * hi Comment ctermfg=1



colorscheme delek

" Look into markdown preview
" Also maybe gvim or something that allows me to have more colour options
" (nvim?)

" Shows command as you build it
set showcmd


"" coc (autocomplete)

" Need to install language servers like `:CocInstall coc-clangd`
" https://github.com/neoclide/coc.nvim/wiki/Language-servers

" https://github.com/neoclide/coc.nvim/issues/869
" Use K to show documentation in preview window
nnoremap <silent> K :call <SID>show_documentation()<CR>

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction



" Remove column on left and give red background to erroring lines
set signcolumn=no
hi CocErrorSign ctermfg=9 ctermbg=52
hi CocErrorFloat ctermfg=9 ctermbg=NONE


" A util function which will show the highlight groups for a char
" Also remember u call with :call SynStack()
function! SynStack ()
    for i1 in synstack(line("."), col("."))
        let i2 = synIDtrans(i1)
        let n1 = synIDattr(i1, "name")
        let n2 = synIDattr(i2, "name")
        echo n1 "->" n2
    endfor
endfunction

"set updatetime=300

" Get autocomplete suggestions with ctrl+space
inoremap <silent><expr> <c-space> coc#refresh()

" Cycle through autocomplete with Tab and Shift+Tab
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Cancel autocomplete selection with Escape
"inoremap <expr> <Esc> pumvisible() ? coc#refresh() : "\<Esc>"

"inoremap <expr> <Esc> pumvisible() ? coc#float#close_all() : "\<Esc>"

"function! s:CancelCoc()
"    call coc#refresh()
"endfunction
"inoremap <expr> <Esc> pumvisible() ? <SID>CancelCoc() : "\<Esc>"

" if visible refresh
" if visible still, refrehs again?



:tnoremap <Esc> <C-\><C-n>


