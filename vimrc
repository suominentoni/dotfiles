set nocompatible
filetype off "required for Vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#begin()

Plugin 'VundleVim/Vundle.vim'
Plugin 'tpope/vim-fugitive'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'wesQ3/vim-windowswap'
Plugin 'vim-scripts/bufkill.vim'
Plugin 'ntpeters/vim-better-whitespace'
Plugin 'altercation/vim-colors-solarized'
Bundle 'daylerees/colour-schemes', { 'rtp': 'vim/' }
Plugin 'scrooloose/nerdtree'
Plugin 'rstacruz/sparkup'
Plugin 'elzr/vim-json'
Plugin 'groenewege/vim-less'
Plugin 'guns/vim-clojure-static'
Plugin 'tpope/vim-fireplace'
Plugin 'pangloss/vim-javascript'
Plugin 'othree/yajs.vim'
Plugin 'mxw/vim-jsx'
Plugin 'raichoo/haskell-vim'
Plugin 'valloric/MatchTagAlways'
Plugin 'derekwyatt/vim-scala'
Plugin 'tpope/vim-obsession'

Plugin 'christoomey/vim-tmux-navigator'

Plugin 'vimwiki/vimwiki'

" Needed for tsuquyomi
Plugin 'Shougo/vimproc.vim'

" Typescript
Plugin 'leafgarland/typescript-vim'
Plugin 'Quramy/tsuquyomi'

Plugin 'vim-syntastic/syntastic'

call vundle#end()

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_enable_signs=1
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_javascript_eslint_exec = './node_modules/.bin/eslint'
let g:syntastic_typescript_checkers = ['tslint']
let g:syntastic_typescript_tslint_exec = './node_modules/.bin/tslint'
let g:syntastic_typescript_tslint_project = './tslint.json'


" Windowswap key bindings (vimwiki uses the 'ww' binding)
let g:windowswap_map_keys = 0 "prevent default bindings
nnoremap <silent> <leader>yw :call WindowSwap#MarkWindowSwap()<CR>
nnoremap <silent> <leader>pw :call WindowSwap#DoWindowSwap()<CR>
nnoremap <silent> <leader>ws :call WindowSwap#EasyWindowSwap()<CR>

" reload .vimrc on save
augroup reload_vimrc " {
  autocmd!
  autocmd BufWritePost $MYVIMRC source $MYVIMRC
augroup END " }

" file type based indentation
filetype plugin indent on

" how many columns text is indented with the reindent operations (<< and >>))
set shiftwidth=4

" how many columns a tab counts for
set tabstop=4

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
    \ 'svg' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'javascript' : 1,
    \ 'jinja' : 1,
    \}

"let g:airline_theme='monochrome'
let g:airline_theme='simple'

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
" map <silent> <C-p> :CtrlPMRUFiles<CR>

map <c-s> :w<CR>

" Not needed with Vim Tmux Navigator
" Switch windows with Ctrl+<h,j,k,l>
"map <C-J> <C-W>j
"map <C-K> <C-W>k
"map <C-H> <C-W>h
"map <C-L> <C-W>l

":imap ` <Esc>
":vmap ` <Esc>

" Copy and paste from system clipboard with ctrl-c and ctrl-C
vnoremap <C-c> :w !pbcopy<CR><CR>
noremap <C-<Shift>-c> :r !pbpaste<CR><CR>

":inoremap ( ()<Esc>i
"" :inoremap { {<Return><Return>}<Left><Up>
":inoremap { {}<Esc>i
":inoremap [ []<Esc>i
":inoremap ' ''<Esc>i
":inoremap " ""<Esc>i

:nnoremap <C-b> :bnext<CR>

nnoremap <silent> <Bslash> :nohlsearch<Bar>:echo<CR>"
let mapleader = " "

" Insert new line without entering Insert mode
nmap <CR> o<Esc>
