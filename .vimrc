colorscheme desert
syntax on
syntax enable

set number
set colorcolumn=81

set backspace=indent,eol,start
set expandtab
set shiftwidth=2
set softtabstop=2
set wrap

let mapleader = "\<space>"

" edit .vimrc
nnoremap <leader>en :vsp $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" move line
nnoremap <leader>j ddp
nnoremap <leader>k ddkP

" wrap word
nnoremap <leader>" bi"<esc>A"<esc>
nnoremap <leader>' bi'<esc>A'<esc>

" word suggestion
inoremap <tab> <c-n>
inoremap <c-n> <nop>
inoremap <expr> k pumvisible() ? "\<up>" : "k"
inoremap <expr> j pumvisible() ? "\<down>" : "j"

" status line
highlight StatusLineLight ctermfg=black ctermbg=darkgray
highlight StatusLineDark ctermfg=darkgray ctermbg=black

function! GitBranch()
  return system("git rev-parse --abbrev-ref HEAD 2>/dev/null | tr -d '\n'")
endfunction

function! StatusLineGit()
  let l:branchname = GitBranch()
  return strlen(l:branchname) > 0 ? l:branchname : ''
endfunction

set laststatus=2
set statusline=
set statusline+=%#statuslinelight#
set statusline+=\ %{StatusLineGit()}\ 
set statusline+=%#statuslinedark#
set statusline+=\ %F\ 
set statusline+=%=
set statusline+=%#statuslinelight#
set statusline+=\ %l:%c\  
