syntax on
set number
set foldmethod=indent

set backspace=indent,eol,start
set expandtab
set shiftwidth=2
set softtabstop=2
set wrap

let mapleader = "\<space>"

" .vimrc editing
nnoremap <leader>en :vsp $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" move line
nnoremap <leader>j ddp
nnoremap <leader>k ddkP
