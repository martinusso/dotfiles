if has("win32") || has("gui_win32") || has("gui_win32s") || has("win64")
    source $VIMRUNTIME\mswin.vim
    let $VIMHOME = $HOME."/vimfiles/"
else  " Unix-like
    source $VIMRUNTIME/mswin.vim
    let $VIMHOME = $HOME."/.vim/"
endif

" Required! Before Vundle
set nocompatible " be iMproved
filetype off

" All of the plugins are installed with Vundle from this file.
source $VIMHOME/vundle.vim

syntax on " Enable syntax highlighting
filetype plugin indent on

" All of the Vim configuration
source $VIMHOME/environment.vim
source $VIMHOME/config.vim
source $VIMHOME/bindings.vim
