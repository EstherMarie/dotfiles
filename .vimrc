"source $HOME/.vim/settings/plugins.vim
"source $HOME/.vim/settings/configs.vim
"source $HOME/.vim/settings/functions.vim
"source $HOME/.vim/settings/mappings.vim

" set termguicolors
set background=dark
"colorscheme gruvbox

:syntax on

set cursorline
" :autocmd InsertEnter * set cul
" :autocmd InsertLeave * set nocul

set number
set relativenumber

set tabstop=2
set softtabstop=2
set shiftwidth=2
set expandtab

set smartindent
set autoindent

set hlsearch
set incsearch

set ignorecase
set smartcase

set splitbelow
set splitright

set mouse=a
set undofile

:filetype on

set fileencoding=utf-8
set encoding=utf-8
" set fileformat=unix

set scrolloff=8
set signcolumn=yes

set wrap
set linebreak

set wildmenu

set noswapfile
set nobackup
set nowritebackup

set foldmethod=indent
set foldlevelstart=99

" ===== Mappings =====

inoremap jk <esc>
