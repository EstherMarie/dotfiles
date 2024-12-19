"source $HOME/.vim/settings/plugins.vim
"source $HOME/.vim/settings/configs.vim
"source $HOME/.vim/settings/functions.vim
"source $HOME/.vim/settings/mappings.vim

" set termguicolors
set background=dark
colorscheme desert
" colorscheme gruvbox

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

" set Space as leader key
nnoremap <SPACE> <Nop>
let mapleader=" "


inoremap jk <esc>

" move down and keep cursor in center
nnoremap <C-d> <C-d>zz
" move up and keep cursor in center
nnoremap <C-u> <C-u>zz

" move selected lines keeping indentation
vnoremap J :m '>+1<CR>gv=gv
vnoremap K :m '<-2<CR>gv=gv

" Navigate windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

" Resize with arrows
nnoremap <C-Up> :resize -2<CR>
nnoremap <C-Down> :resize +2<CR>
nnoremap <C-Left> :vertical resize -2<CR>
nnoremap <C-Right> :vertical resize +2<CR>

" Navigate buffers
nnoremap <S-l> :bnext<CR>
nnoremap <S-h> :bprevious<CR>

" Close buffers
nnoremap <S-q> :bdelete!<CR>

" Better paste
vnoremap p "_dP

" save with "mm"
nnoremap mm :w!<CR>

" break line with Enter
nnoremap <CR> i<CR><esc>

" --- NERDTree---

nnoremap <leader>w :NERDTreeToggle<CR>
nnoremap <leader>wf :NERDTreeFind<CR>
nnoremap <leader>n :NERDTree<CR>

" ===== Plugins =====

call plug#begin()

Plug 'dense-analysis/ale'
Plug 'preservim/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'mattn/emmet-vim'

call plug#end()

" Don't forget to run :PlugInstall after adding a new plugin


" ----- Plugin: ALE -----

let g:ale_fixers = {
\   '*': ['remove_trailing_lines', 'trim_whitespace'],
\   'javascript': ['eslint'],
\   'typescript': ['eslint'],
\}

" Set this variable to 1 to fix files when you save them.
let g:ale_fix_on_save = 1
