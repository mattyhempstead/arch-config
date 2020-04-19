" Turn on syntax highlighting
syntax on

" Show line numbers
set number

" Grey line numbers
highlight LineNr ctermfg=DarkGrey

" Set indentation type depending on file type
autocmd Filetype java setlocal ts=4 sw=4 expandtab
autocmd Filetype javascript setlocal ts=2 sw=2 expandtab
autocmd Filetype json setlocal ts=4 sw=4 expandtab
autocmd Filetype css setlocal ts=4 sw=4 expandtab
autocmd Filetype python setlocal ts=4 sw=4 expandtab
autocmd BufNewFile,BufRead *.c,*.h setlocal ts=4 sw=4 expandtab

