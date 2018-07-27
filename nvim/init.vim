"
" Zack's vim config
"
set nocompatible
filetype off

call plug#begin('~/.local/share/nvim/plugged')

Plug 'kchmck/vim-coffee-script'
Plug 'mustache/vim-mustache-handlebars'
Plug 'pangloss/vim-javascript'
Plug 'posva/vim-vue'
Plug 'kien/ctrlp.vim'
Plug 'scrooloose/nerdtree'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-rails'
Plug 'shime/vim-livedown'

call plug#end()

set termguicolors
filetype plugin indent on

syntax on

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
set shiftwidth=2
set showmatch
set smartindent
set softtabstop=2
set tabstop=2

" ctrlp options
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git\|tmp\|bower_components'
let g:ctrlp_show_hidden = 1

augroup AutoCmds
  autocmd!
  autocmd FileType qf nnoremap <buffer> <CR> <CR>
  autocmd QuickFixCmdPost *grep* cwindow
  autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif
  autocmd BufNewFile,BufRead *.jbuilder set ft=ruby
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

colorscheme zenburn
