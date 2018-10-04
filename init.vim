" Plugins {{{
" Don't forget to install vim-plug https://github.com/junegunn/vim-plug/wiki/tutorial
call plug#begin('~/.config/nvim/plugins')

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'flowtype/vim-flow'
Plug 'w0rp/ale'
Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

call plug#end()
" }}}

" Plugins configuration {{{
let g:javascript_plugin_flow = 1

let g:flow#enable = 0

let g:ale_linters = { 'javascript': ['eslint', 'flow'] }
let g:ale_echo_msg_format = '%linter% says %code: %%s'
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
set formatoptions-=ro
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
set nofoldenable
" }}}

" Splitting {{{
set splitright
set splitbelow
" }}}

" Keys mapping {{{
map <C-n> :NERDTreeToggle<CR>
" }}}

set modelines=1

" vim:foldenable:foldmethod=marker:foldlevel=0
