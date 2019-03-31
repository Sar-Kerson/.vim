set nocompatible              " be iMproved, required
filetype off                  " required

" map configuration
let g:mapleader=','
map <Leader>nn :NERDTreeToggle<CR>

" ycm configuration
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_semantic_triggers = {
    \   'python': [ 're!(import\s+|from\s+(\w+\s+(import\s+(\w+,\s+)*)?)?)' ]
    \ }


" colorscheme configuration
syntax enable
set background=dark
set t_Co=256
colorscheme dracula

" cusor configuration
autocmd InsertEnter,InsertLeave * set cul!
set guicursor=n-v-c:block-Cursor


" Plugins
" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'scrooloose/nerdtree'
Plugin 'Valloric/YouCompleteMe'
Plugin 'dracula/vim'

call vundle#end()            " required
filetype plugin indent on    " required
