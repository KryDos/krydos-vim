source ~/.vim/vimrc

" remap leader key
let mapleader = ","

" set color scheme
colorscheme molokai

" show the line number
set nu
" set the tab size
set sw=4
set sts=4
set tabstop=4
" change all tabs to spaces
set expandtab
" set nowrap to lines
set nowrap
" remove backup files (which started with ~)
set noswapfile

" show the first match for the pattern, while you are still typing it.
set incsearch

" maximize gvim window
if has ("gui_running")
    set lines=999 columns=999
endif

" set font
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ Bold\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Inconsolata:h11:cANSI
    endif
endif

filetype on

" auto cd with nerdtree
let NERDTreeChDirMode=2

let g:tagbar_ctags_bin='/usr/local/bin/ctags'  
let g:tagbar_width=26                          

" set the shortkeys
map <F5> :NERDTreeToggle<CR>
map <F6> :TagbarToggle<CR>

" remap ESC to the jk. I found this very useful
inoremap kj <ESC>

" create a command for FufFile plugin. Search for files in current directory
command Find :FufFile **/

" show all buffers and change it by entering buffer number
noremap <leader>b :ls<cr>:b<space>

let &t_Co=256

" map for the ack.vim plugin
" --------------------------
noremap <leader>a :Ack 

" map for BufExplorer
" -------------------
noremap <leader>e :BufExplorer<cr>

" map for fugitive
" ----------------
noremap ,gs :Gstatus<cr>
noremap ,gc :Gcommit<cr>

" map for VimShell
" ----------------
noremap ,s :VimShell<cr>
