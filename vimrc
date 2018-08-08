set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'ngmy/vim-rubocop'
Plugin 'tpope/vim-endwise'
Plugin 'bronson/vim-trailing-whitespace'
Plugin 'vim-ruby/vim-ruby'
Plugin 'mileszs/ack.vim'
Plugin 'dracula/vim'
Plugin 'scrooloose/nerdtree'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

syntax on

colorscheme dracula


set tabstop=2       "spaces per tab when reading file
set softtabstop=2   "spaces per tab when editing file
set expandtab       "tabs are spaces

set number relativenumber "show relative line numbers

set cursorline      "highlight current line

set wildmenu        "visual autocompletion

set incsearch       "search as typing
set hlsearch        "highlight matches

nnoremap <S-H> <C-W><C-H>
nnoremap <S-L> <C-W><C-L>
nnoremap <S-J> <C-W><C-J>
nnoremap <S-K> <C-W><C-K>

autocmd FileType ruby set shiftwidth=2 " indent for ruby
autocmd vimenter * NERDTree            " opens nerd tree on vim start
" quits vim if nerd tree is the only pane left
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

" backspace fix
set backspace=indent,eol,start

set path+=**

set backupdir=~/.vim/backup
set directory=~/.vim/directory

set regexpengine=1
