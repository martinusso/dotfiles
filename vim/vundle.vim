if has("win32") || has("gui_win32") || has("gui_win32s") || has("win64")
    set rtp+=~/vimfiles/bundle/vundle/
else  " UNIX
    set rtp+=~/.vim/bundle/vundle/
endif

call vundle#rc()

" let Vundle manage Vundle
Bundle 'gmarik/vundle'

Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}

Bundle 'scrooloose/nerdtree'
Bundle 'kien/ctrlp.vim'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'ervandew/supertab'
Bundle 'scrooloose/nerdcommenter'
Bundle 'tpope/vim-surround'
"Bundle 'vim-scripts/bufexplorer.zip'
"Bundle 'jmcantrell/vim-virtualenv'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'L9'
"Bundle 'FuzzyFinder'

" Programming
    " Python
    "Bundle 'klen/python-mode'
    "Bundle 'alfredodeza/pytest.vim'
    Bundle 'davidhalter/jedi-vim'
    Bundle 'hynek/vim-python-pep8-indent'
    " Ruby
    "Bundle 'tpope/vim-rails'
    " PHP
    Bundle 'stanangeloff/php.vim'
    " Javascript
    Bundle 'pangloss/vim-javascript'
    " (HT/X)ml
    "Bundle 'mattn/zencoding-vim'
    "Bundle 'tpope/vim-markdown'
    " CSS
    "Bundle 'wavded/vim-stylus'
    " Clojure
    "Brundle 'vim-scripts/VimClojure'
    "Bundle 'guns/vim-clojure-static'
    "Bundle 'tpope/vim-foreplay'
    "Bundle 'tpope/vim-classpath'
"
" Git
Bundle 'tpope/vim-fugitive'

" Colorscheme
Bundle 'fugalh/desert.vim'
Bundle 'molokai'
Bundle 'nanotech/jellybeans.vim'
