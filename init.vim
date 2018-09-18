" Plugins {{{
" Don't forget to install vim-plug https://github.com/junegunn/vim-plug/wiki/tutorial
call plug#begin('~/.config/nvim/plugins')

Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'tpope/vim-surround'

call plug#end()
" }}}

" Plugins configuration {{{
let g:javascript_plugin_flow = 1
"}}}

" Searching {{{
set hlsearch
set incsearch
" }}}

" File finding {{{
set path+=**
set wildignore+=*/node_modules/*
" }}}

" Text {{{
set formatoptions-=o
set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab
" }}}

" UI {{{
syntax on
color dracula
set wildmenu
set number
set showcmd
set showmatch " highlight matching [{()}]
" }}}

" Backup {{{
set nobackup
set nowritebackup
set noswapfile
" }}}

" Folding {{{
set foldenable
set foldnestmax=10
set foldlevel=10
set foldmethod=manual
" }}}

" Splitting {{{
set splitright
set splitbelow
" }}}

set modelines=1

" vim:foldmethod=marker
