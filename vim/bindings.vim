" set custom map leader to ','
let mapleader = ','

" Get efficient: shortcut mappings
nnoremap ; :

inoremap <C-space> <C-x><C-o>

" move block
vnoremap < <gv
vnoremap > >gv
noremap <C-i> >
noremap <C-u> <
" noremap <TAB> >
" noremap <S-TAB> <

" Disable key
map <F1> <ESC>
imap <F1> <ESC>

" Move line to UP or DOWN
noremap <A-DOWN> mz:m+<cr>
noremap <A-UP> mz:m-2<cr>
inoremap <A-DOWN> <esc>:m+<cr>==gi
inoremap <A-UP> <esc>:m-2<cr>==gi

cab W w | cab Q q | cab Wq wq | cab wQ wq | cab WQ wq | cab X x
noremap <C-s> :w!<CR>
inoremap <C-s> <ESC>:w!<CR>

" delete line Ctrl+d
noremap <C-d> dd
inoremap <C-d> <ESC>:d<CR>i

" undo
inoremap <C-z> <ESC>ui
noremap <C-z> u

" Copy, Paste and Cut by CTRL+C, CTRL+V CTRL+X
 vnoremap <C-X> "+x
vnoremap <C-C> "+y
map <C-V> "+gP
cmap <C-V> <C-R>+

" open files
nmap gf :new %:p:h/<cfile><CR>

"
" >> Tab navigation
    map tn :tabnext<CR>
    map tp :tabprevious<CR>
    map tt :tabnew<CR>

"
" >> Working with multiple files - Window
    " go to next buffer
    map <C-S-j> :bnext<CR>
    imap <C-S-j> <ESC>:bnext<CR>
    map <C-S-l> :bnext<CR>
    imap <C-S-l> <ESC>:bnext<CR>
    " go to previous buffer
    map <C-S-h> :bprev<CR>
    imap <C-S-h> <ESC>:bprev<CR>
    map <C-S-k> :bprev<CR>
    imap <C-S-k> <ESC>:bprev<CR>
    " key mapping for window navigation
    map <C-h> <C-w>h<ESC>
    imap <C-h> <ESC><C-w>h<ESC>
    map <C-j> <C-w>j<ESC>
    imap <C-j> <ESC><C-w>j<ESC>
    map <C-k> <C-w>k<ESC>
    imap <C-k> <ESC><C-w>k<ESC>
    map <C-l> <C-w>l<ESC>
    imap <C-l> <ESC><C-w>l<ESC>
    " delete a buffer (close a file)
    nmap <C-q> :q!<CR>
    imap <C-q> <ESC>:q!<CR>
    " Split windows
    imap <C-w>s <ESC><C-w>s<CR>
    map <A-C-UP> <C-w>s<CR>
    imap <A-C-UP> <ESC><C-w>s<CR>
    map <A-C-DOWN> <C-w>s<CR>
    imap <A-C-DOwN> <ESC><C-w>s<CR>
    " Split windows vertically
    imap <C-w>v <ESC><C-w>v<CR>
    map <A-C-LEFT> <C-w>v<CR>
    imap <A-C-LEFT> <ESC><C-w>v<CR>
    map <A-C-RIGHT> <C-w>v<CR>
    imap <A-C-RIGHT> <ESC><C-w>v<CR>
    " Quit a window
    imap <C-w>q <ESC><C-w>q<CR>

    " BufExplorer
    nmap <C-b> :BufExplorer<CR>
    imap <C-b> <ESC>:BufExplorer<CR>

"
" >>> functions

" Copy full buffer to OS clipboard.
function! CopyAll()
    normal mzggVG"+y'z
endfunction
command CCopyAll call CopyAll()
imap <C-S-a> <ESC>:CCopyAll<CR>
map <C-S-a> :CCopyAll<CR>


" >> Plugin-specific configuration

" NERDTree
let NERDTreeShowHidden=1
let NERDTreeWinSize=30
let NERDChristmasTree=1
let NERDTreeIgnore = ['\.pyc$', '\.pyo$', '\.swp$', '\~$']
nmap <F3> :NERDTreeFind<CR>
nmap <F4> :NERDTreeToggle<CR>
" Open NERDTree on start
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p
" Disable the scrollbars (NERDTree)
    "set guioptions-=r
"set guioptions-=L

" NERDCommenter
let NERDSpaceDelims = 1
map ; :call NERDComment(0, "invert")<CR>
vmap ; :call NERDComment(0, "invert")<CR>

" Fugitive - GIT
nnoremap <leader>gs :Gstatus<CR>
nnoremap <leader>ga :Gwrite<CR>
nnoremap <leader>gc :Gcommit %<CR>
nnoremap <leader>gd :Gdiff<CR>
nnoremap <leader>gl :Glog<CR>
nnoremap <leader>gb :Gblame<CR>
nnoremap <leader>gr :Gremove<CR>
nnoremap <leader>go :Gread<CR>
nnoremap <leader>gpl :Git pull origin master<CR>
nnoremap <leader>gpp :Git push<CR>
nnoremap <leader>gpm :Git push origin master<CR>
noremap <F9> :emenu G.<TAB>
menu G.Status :Gstatus<CR>
menu G.Diff :Gdiff<CR>
menu G.Commit :Gcommit %<CR>
menu G.Checkout :Gread<CR>
menu G.Remove :Gremove<CR>
menu G.Move :Gmove<CR>
menu G.Log :Glog<CR>
menu G.Blame :Gblame<CR>
