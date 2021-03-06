" hktkzyx <hktkzyx@qq.com>
" Show line number
set nocompatible
set showmode
set showcmd

" Encoding
set encoding=utf-8
set fileencoding=utf-8
set fileencodings=ucs-bom,utf-8,gb18030,cp936,big5

set ruler
set relativenumber
set number
set syntax=on

if has('mouse')
	set mouse=a
endif

" Tab indent
set tabstop=4
set shiftwidth=4
set expandtab "Use the space instead of tab
set smarttab
set autoindent
set smartindent
set cindent

colorscheme molokai

" Search
set ignorecase
set smartcase
set hlsearch
exec "nohlsearch"
set incsearch

" Display
set t_Co=256
if &term =~ '256color'
	" disable Background Color Erase (BCE) so that color schemes
    " render properly when inside 256-color tmux and GNU screen.
	" see also http://snk.tuxfamily.org/log/vim-256color-bce.html
	set t_ut=
endif

" Display tab and trail space
set list
set listchars=tab:>-,trail:·
set guifont=Consolas\ 11

" Map
let mapleader="\<space>"
inoremap jj <Esc>
nnoremap <leader><CR> :nohlsearch<CR>
nnoremap <leader>w :w<CR>
nnoremap <leader>q :q<CR>
nnoremap <leader>wq :wq<CR>
nnoremap <leader>q1 :q!<CR>

" Plugin
if empty(glob('~/.vim/autoload/plug.vim'))
  silent !curl -fLo ~/.vim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'
Plug 'joom/vim-commentary'
Plug 'michaeljsmith/vim-indent-object'
Plug 'jiangmiao/auto-pairs'

call plug#end()
