set mouse=a             " enable mouse
set clipboard+=unnamed  " sharing windows clipboard
set modeline            " use vim settings in beginning/end of files
set modelines=5         " number of lines to look for modeline
"set magic
set tabpagemax=20
set keymodel=startsel,stopsel
set selection=exclusive
set browsedir=current

" allows selection
set selectmode=mouse,key
set mousemodel=popup

" Localization
set langmenu=none       " always use english menu
"set keymap=             " alternative keymap
set spelllang=en,pt-br
set encoding=utf-8
set fileencoding=utf-8  "
set termencoding=utf-8

" Display options
set laststatus=2
set showmode            " show current mode down bottom
set ruler               " show line number, cursor position
set title
set cursorline          " highlight cursor line
set number              " enable line numbers
set visualbell           " don't beep
set noerrorbells         " don't beep

set list
if v:version >= 700
    set listchars=tab:>-,trail:.,extends:>,precedes:<
else
    set listchars=tab:>-,trail:.,extends:>
endif
set linebreak                " break lines by words
set winminheight=0           " minimal windows height
set winminwidth=0            " minimal windows height
set scrolloff=3              " when scrolling, keep cursor 3 lines away from screen border
set sidescroll=3
set sidescrolloff=10
set showcmd                  " show incomplete commands down the bottom
"set cmdheight=2
"set whichwrap=b,s,<,>,[,],l,h
set completeopt=menu,preview " configure drop-down menu when completing with ctrl-n
"set infercase
set numberwidth=1            " keep line numbers small if it's shown
set nojoinspaces
set splitbelow               " Split new window below current one 

" Search
set gdefault
set nohlsearch              " Disable highlighting after search
set incsearch               " incremental searching
set ignorecase              " searches are case insensitive
set smartcase

" Edit
set backspace=indent,eol,start  " allow backspace to remove indents, newlines and old tex
set virtualedit=all             " on virtualedit for all mode
set writeany           " Allow writing readonly files
set nowrap              " don't wrap lines
set autoindent     " copy indent from previous line

set pastetoggle=<F2>

"set confirm

" Tab options
set expandtab      " tab with spaces
set softtabstop=4  " tab like 4 spaces
set tabstop=4      " tab like 4 spaces
set smarttab       " ident using shiftwidth
set shiftwidth=4   " number of spaces to use for each step of indent
set showtabline=4
set smartindent    " enable nice indent
set shiftround     " drop unused spaces

" Buffer options
set hidden              " hide buffers when not displayed
set autoread            " Automatically read files which have been changed outside of Vim
"set autowrite           " automatically save before commands like :next and :make

" Backup and swap files
set history=1000
set nobackup
set noswapfile
set nowritebackup

" Matching characters
set showmatch        " Show matching brackets
set matchpairs+=<:>  " make < and > match as well
set matchtime=2      " Bracket blinking 

" Folding
if has('folding')
    set foldmethod=indent  " folding method: indent
    set foldmethod=marker  " Fold on marker
    set foldlevel=999      " initial fold level
endif

" Term
if &term =~ 'xterm'
    set t_Co=256
endif

" Wildmenu
set wildmenu                            " use wildmenu
set wildcharm=<TAB>
set wildmode=list:longest               " make cmdline completion similar to bash
set wildignore=*.o,*.sw*,*.pyc,*.bak,*~ " stuff to ignore when tab completing

" GUI settings
if has("gui_running")
    colorscheme desert
    set guifont=ubuntu\ mono\ 12
    "set guioptions-=T  "turn off needless toolbar on gvim/mvim
    "set guioptions-=m
    " Windows
    if has("gui_win32") || has("gui_win32s")
        set guifont=Consolas:h12
        set enc=utf-8
    endif
endif
