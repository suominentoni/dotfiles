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
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'raichoo/haskell-vim'

" file type based indentation
filetype plugin indent on

" how many columns text is indented with the reindent operations (<< and >>))
set shiftwidth=4
" how many columns a tab counts for
set tabstop=4
" hitting Tab in insert mode will produce the appropriate number of spaces.
set expandtab
set laststatus=2
set number
set ruler
set showcmd
syntax enable

" Markdown syntax highlighting for .md files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

let NERDTreeShowHidden=1

let g:molokai_original = 1
colorscheme molokai
" colorscheme summerfruit256 " Good light colorscheme
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
map <silent> <C-p> :CtrlPBuffer<CR>

" Switch windows with Ctrl+<h,j,k,l>
map <C-J> <C-W>j
map <C-K> <C-W>k
map <C-H> <C-W>h
map <C-L> <C-W>l

":imap ` <Esc>
":vmap ` <Esc>

" Copy and paste from system clipboard with ctrl-c and ctrl-v
vnoremap <C-c> :w !pbcopy<CR><CR>
noremap <C-v> :r !pbpaste<CR><CR>

:inoremap ( ()<Esc>i
" :inoremap { {<Return><Return>}<Left><Up>
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i

:nnoremap <C-b> :bnext<CR>
:nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>"
