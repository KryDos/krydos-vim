source ~/.vim/vimrc
"colorscheme vividchalk
set nu
set sw=4
set sts=4
set expandtab
set tabstop=4
set guioptions-=m
set nowrap
set noswapfile

" maximize gvim window
if has ("gui_running")
    set lines=999 columns=999
endif

" set font
if has("gui_running")
    if has("gui_gtk2")
        set guifont=Inconsolata\ 12
    elseif has("gui_macvim")
        set guifont=Menlo\ Regular:h14
    elseif has("gui_win32")
        set guifont=Inconsolata:h11:cANSI
    endif
endif

filetype on

" default path

let Tlist_Use_Right_Window=1

map <F4> :BuffergatorToggle<CR>
map <F5> :NERDTreeToggle<CR>
map <F6> :TlistToggle<CR>