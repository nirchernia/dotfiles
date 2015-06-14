set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" " alternatively, pass a path where Vundle should install plugins
" "call vundle#begin('~/some/path/here')

" " let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'
Plugin 'christoomey/vim-tmux-navigator'
" " All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" " To ignore plugin indent changes, instead use:
" "filetype plugin on

execute pathogen#infect()
syntax on
filetype plugin indent on
set mouse=a

let g:tmux_navigator_no_mappings = 1

nnoremap <silent> <c-h> :TmuxNavigateLeft<cr>
nnoremap <silent> <c-j> :TmuxNavigateDown<cr>
nnoremap <silent> <c-k> :TmuxNavigateUp<cr>
nnoremap <silent> <c-l> :TmuxNavigateRight<cr>
nnoremap <silent> <c-/> :TmuxNavigatePrevious<cr>

let g:tmux_navigator_save_on_switch = 1

" Copy with Ctrl-C, and yank and copies it to system clipboard
vnoremap <C-c> "*y

" runtime path for ctrlp plugin
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Monokai theme, if for some reason 256 color doesn't work, use: export TERM=xterm-256color
syntax on
let g:solarized_termcolors=256
colorscheme monokai

" number of visual spaces per TAB
set tabstop=4
" number of spaces in tab when editing
set softtabstop=4 
" tabs are spaces, especially good for a language like Python
set expandtab

" show line numbers
set number

" highlight current line
set cursorline

" load filetype-specific indent files, checks/loads from ~/.vim/indent/python.vim
" whenever you open a *.py file or any other file type
filetype indent on

" visual autocomplete for command menu
set wildmenu

" redraw only when we need to.
set lazyredraw
