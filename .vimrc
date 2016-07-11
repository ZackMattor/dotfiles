"
" /home/zmattor/.vimrc - Crriten's vimrc
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('.vim/plugins')

Plugin 'VundleVim/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'

call vundle#end()
filetype plugin indent on

syntax on

set autowrite   " Automatically save before commands like :next and :make
set background=dark
set backspace=2
set expandtab
set hidden      " Hide buffers when they are abandoned
set hlsearch
set ignorecase    " Do case insensitive matching
set incsearch   " Incremental search
set list
set listchars=trail:⋅
set mouse=a
set noswapfile
set number
set ruler
set shiftwidth=2
set showmatch!
set smartindent
set softtabstop=2
set tabstop=2

let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|tmp\|bower_components'
" let g:ctrlp_match_func = { 'match': 'pymatcher#PyMatch' }
let g:ctrlp_show_hidden = 1

" have Vim load indentation rules and plugins according to the detected filetype.
if has("autocmd")
  filetype plugin indent off
endif

au BufNewFile,BufRead *.jbuilder set ft=ruby

nmap <CR> :write<CR>
nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

" Close if NERDTree is last buffer
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

if has('mouse_sgr')
  set ttymouse=sgr
endif

if $TERM == "screen" || $TERM == "xterm-256color" || $TERM == "screen-256color" || $COLORTERM == "gnome-terminal" || 1
  set t_Co=256
endif

" Load baller theme
source ~/.vim/colors/zenburn.vim
