set omnifunc=syntaxcomplete#Complete

" Comment/Uncomment for different languages
au FileType haskell,vhdl,ada,sql        let comment = '-- '
au FileType sh,make,python,ruby         let comment = '# '
au FileType c,cpp,java,javascript       let comment = '// '
au FileType tex                         let comment = '% '
au FileType vim                         let comment = '" '

" Python
autocmd FileType python set smartindent cinwords=if,elif,else,for,while,try,except,finally,def,class,with
autocmd FileType python set omnifunc=pythoncomplete#Complete
autocmd FileType python set expandtab smarttab autoindent smartindent shiftwidth=4 tabstop=4 softtabstop=4

" Ruby
autocmd FileType ruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby let g:rubycomplete_rails = 1
autocmd FileType ruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby set expandtab smarttab autoindent smartindent shiftwidth=2 tabstop=2 softtabstop=2

" Static files
autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
autocmd FileType css set omnifunc=csscomplete#CompleteCSS

au BufWinEnter,WinEnter * start  " Start in INSERT-MODE
