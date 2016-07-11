"
" /home/zmattor/.vimrc - Crriten's vimrc
"
set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin('~/.vim/plugins')

Plugin 'VundleVim/Vundle.vim'
Plugin 'kchmck/vim-coffee-script'
Plugin 'kien/ctrlp.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'pangloss/vim-javascript'
Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'tpope/vim-surround'

call vundle#end()
filetype plugin indent on

syntax on

set autowrite
set background=dark
set backspace=2
set expandtab
set hidden
set hlsearch
set ignorecase
set incsearch
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

au BufNewFile,BufRead *.jbuilder set ft=ruby

augroup AutoCmds
  autocmd!
  autocmd FileType qf nnoremap <buffer> <CR> <CR>
  autocmd QuickFixCmdPost *grep* cwindow
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
augroup END

nnoremap <CR> :write<CR>

nnoremap <Tab> >>_
nnoremap <S-Tab> <<_
inoremap <S-Tab> <C-D>
vnoremap <Tab> >gv
vnoremap <S-Tab> <gv

if has('mouse_sgr')
  set ttymouse=sgr
endif

" Load baller theme
source ~/.vim/colors/zenburn.vim
