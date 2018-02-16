" Settings

" read
syntax on
set number
set colorcolumn=81

" write
set backspace=indent,eol,start
set expandtab
set shiftwidth=2
set softtabstop=2

" operate
let mapleader = ";"

" Shortcuts

" .vimrc
nnoremap <leader>en :vsp $MYVIMRC<CR>
nnoremap <leader>sv :source $MYVIMRC<CR>

" insert current date under cursor, format: Feb 16, 2018
" usually used after typing 'Latest updated at ' (mind the tailing white space)
inoremap <leader>t <C-r>=strftime("%b %d, %Y")<CR>

" common
inoremap jj <esc>
inoremap jk <esc>:w<CR>i
