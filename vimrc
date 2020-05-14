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

" Map
inoremap jj <Esc>
noremap <leader><CR> :nohlsearch<CR>

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

" Plugin
call plug#begin('~/.vim/plugged')

Plug 'tpope/vim-surround'

call plug#end()
