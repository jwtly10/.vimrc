let mapleader = " "

command! -nargs=* -complete=file W w <args>
command! -nargs=* -complete=file WA wa <args>
command! -nargs=* -complete=file Q q <args>

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

map j gj
map k gk

set mouse=a
set number

hi Normal guibg=NONE ctermbg=NONE

syntax on
filetype on
