" Plugins {{{
" Don't forget to install vim-plug https://github.com/junegunn/vim-plug/wiki/tutorial
call plug#begin('~/.config/nvim/plugins')

Plug 'dracula/vim', { 'as': 'dracula' }

Plug 'scrooloose/nerdtree'

Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'tpope/vim-repeat'

Plug 'neovim/nvim-lspconfig'
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}

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
set wildignorecase
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

" Lua {{{
lua << EOF
local lspconfig = require("lspconfig")
local treeSitterConfigs = require("nvim-treesitter.configs")

local on_attach = function(client, bufnr)
  local function buf_set_keymap(...) vim.api.nvim_buf_set_keymap(bufnr, ...) end
  local function buf_set_option(...) vim.api.nvim_buf_set_option(bufnr, ...) end

  buf_set_option('omnifunc', 'v:lua.vim.lsp.omnifunc')

  local opts = { noremap=true, silent=true }

  buf_set_keymap('n', 'gd', '<cmd>lua vim.lsp.buf.definition()<CR>', opts)
  buf_set_keymap('n', 'gi', '<cmd>lua vim.lsp.buf.implementation()<CR>', opts)
  buf_set_keymap('n', '<space>D', '<cmd>lua vim.lsp.buf.type_definition()<CR>', opts)
  buf_set_keymap('n', '<space>rn', '<cmd>lua vim.lsp.buf.rename()<CR>', opts)
end

lspconfig.tsserver.setup{
  cmd = { "npx", "typescript-language-server", "--stdio" },
  on_attach = on_attach,
}

treeSitterConfigs.setup{
  highlight = {
    enable = true,
    additional_vim_regex_highlighting = false,
  },
}
EOF
" }}}

set modelines=1

" vim:foldenable:foldmethod=marker:foldlevel=0
