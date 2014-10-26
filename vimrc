set nocompatible
"filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Bundle 'altercation/vim-colors-solarized' 
Bundle 'gmarik/vundle' 
Bundle "daylerees/colour-schemes", { "rtp": "vim/" }
Bundle 'derekwyatt/vim-scala'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Scrooloose/nerdtree'
Bundle 'rstacruz/sparkup'
Plugin 'elzr/vim-json'

filetype plugin indent on 

set shiftwidth=4
set tabstop=4
set expandtab
set laststatus=2
set number 
set ruler
set showcmd
syntax enable

let g:molokai_original = 1
colorscheme molokai

set hlsearch
set ignorecase
set smartcase
set incsearch
set hidden
set runtimepath^=~/.vim/bundle/ctrlp.vim

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//

set wildmenu
set wildmode=full

map <silent> <C-n> :NERDTreeFocus<CR>

:inoremap ( ()<Esc>i
:inoremap { {<Return><Return>}<Left><Up><Tab>
:inoremap [ []<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i

:nnoremap <C-b> :bnext<CR>
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>"
