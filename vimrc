set nocompatible
filetype off "required for Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'gmarik/vundle'
Bundle 'altercation/vim-colors-solarized'
Bundle "daylerees/colour-schemes", { "rtp": "vim/" }
Bundle 'derekwyatt/vim-scala'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Scrooloose/nerdtree'
Bundle 'rstacruz/sparkup'
Plugin 'elzr/vim-json'
Bundle 'ntpeters/vim-better-whitespace'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'groenewege/vim-less'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
filetype plugin indent on

set shiftwidth=4
set tabstop=4
set expandtab
set laststatus=2
set number
set ruler
set showcmd
syntax enable

let NERDTreeShowHidden=1

let g:molokai_original = 1
colorscheme molokai
hi IncSearch ctermfg=195
hi IncSearch ctermbg=4

set hlsearch
set ignorecase
set smartcase
set incsearch
set hidden
set runtimepath^=~/.vim/bundle/ctrlp.vim

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set noswapfile

set wildmenu
set wildmode=full

map <silent> <C-n> :NERDTreeFocus<CR>
map <silent> <C-S-p> :CtrlPBuffer<CR>

:imap ` <Esc>
:vmap ` <Esc>

:inoremap ( ()<Esc>i
:inoremap { {<Return><Return>}<Left><Up>
:inoremap [ []<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i

:nnoremap <C-b> :bnext<CR>
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>"
