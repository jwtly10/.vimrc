" install vimplug
" curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim

" then run :PlugInstall

call plug#begin('~/.vim/plugged')
Plug 'preservim/nerdcommenter'
call plug#end()

let mapleader = " "

command! -nargs=* -complete=file W w <args>
command! -nargs=* -complete=file WA wa <args>
command! -nargs=* -complete=file Q q <args>

nmap gcc <Plug>NERDCommenterToggle
vmap gc <Plug>NERDCommenterToggle

autocmd BufEnter * set formatoptions-=cro
autocmd BufEnter * setlocal formatoptions-=cro

vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

nnoremap n nzzzv
nnoremap N Nzzzv

nnoremap <leader>y "+y
vnoremap <leader>y "+y
nnoremap <leader>Y "+Y

nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

map j gj
map k gk

set mouse=a
set number
set termguicolors
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4

syntax on
filetype on
filetype plugin indent on

" hi Normal guibg=NONE ctermbg=NONE
" set background=dark
colorscheme onehalfdark
