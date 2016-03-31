set nocompatible
filetype off "required for Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

Plugin 'gmarik/vundle'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'wesQ3/vim-windowswap'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'altercation/vim-colors-solarized'
Bundle "daylerees/colour-schemes", { "rtp": "vim/" }
Plugin 'Scrooloose/nerdtree'
Plugin 'rstacruz/sparkup'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'guns/vim-clojure-static'
"Plugin 'tpope/vim-fireplace'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'raichoo/haskell-vim'
Plugin 'valloric/MatchTagAlways'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-obsession'

" file type based indentation
filetype plugin indent on

" how many columns text is indented with the reindent operations (<< and >>))
set shiftwidth=2

" how many columns a tab counts for
set tabstop=2

" hitting Tab in insert mode will produce the appropriate number of spaces.
set expandtab

set backspace=2

" display status line always
set laststatus=2
set number
set ruler
set showcmd
syntax enable

" Markdown syntax highlighting for .md files
au BufNewFile,BufFilePre,BufRead *.md set filetype=markdown

let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0

" Display quotes on every line in JSON files
let g:vim_json_syntax_conceal = 0

" JSX syntax highlighting in other than JSX files
let g:jsx_ext_required = 0

" MatchTagAlways file types (JS added (because of JSX), along with the defaults)
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'javascript' : 1,
    \ 'jinja' : 1,
    \}

let g:airline_theme='monochrome'

let g:molokai_original = 1
colorscheme molokai
" colorscheme summerfruit256 " Good light colorscheme

hi IncSearch ctermfg=195
hi IncSearch ctermbg=4
hi Search ctermfg=2
hi Search ctermbg=22

set hlsearch
set incsearch

" With both ignorecase and smartcase set, if a pattern contains an uppercase
" letter, it is case sensitive, otherwise, it is not.
set ignorecase
set smartcase

" opening a new file when the current buffer has unsaved changes causes it
" to be hidden instead of closed
set hidden

set runtimepath^=~/.vim/bundle/ctrlp.vim

set backupdir=~/.vim/backup//
set directory=~/.vim/swap//
set undodir=~/.vim/undo//
set noswapfile

" Command line completion
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

" Copy and paste from system clipboard with ctrl-c and ctrl-C
vnoremap <C-c> :w !pbcopy<CR><CR>
noremap <C-<Shift>-c> :r !pbpaste<CR><CR>

:inoremap ( ()<Esc>i
" :inoremap { {<Return><Return>}<Left><Up>
:inoremap { {}<Esc>i
:inoremap [ []<Esc>i
:inoremap ' ''<Esc>i
:inoremap " ""<Esc>i

:nnoremap <C-b> :bnext<CR>

nnoremap <silent> <Space> :nohlsearch<Bar>:echo<CR>"

" Insert new line without entering Insert mode
nmap <CR> o<Esc>
