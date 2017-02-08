" This must be first, because it changes other options as side effect
set nocompatible

" Set tabs to take up four spaces
execute pathogen#infect()
filetype plugin indent on
set autoindent
set smartindent
set tabstop=8
set shiftwidth=8
set backspace=indent,eol,start

" Python uses spaces, not tabs, so let's set that
autocmd filetype python set expandtab

" Show matching parenthesis
set showmatch

" Highlight search terms
set hlsearch

" Show information on currently running command
set showcmd

" Syntax Highlighting and such
filetype on
filetype plugin on
syntax enable

" Use english for spellchecking, but don't use it by default
set spl=en_au spell
set nospell

" Enable mouse support in console
set mouse=a

" Enable line numbers
set number

" Set my colorscheme
colorscheme darcula
if has("gui_running")
	" Remove Toolbar
	set guioptions -=T
endif

" Map Ctrl-M to run the current php file, and Ctrl-L to run it through PHP
" parse
autocmd FileType php noremap <C-M> :w!<CR>:!clear && /usr/bin/php %<CR>
autocmd FileType php noremap <C-L> :!clear && /usr/bin/php -l %<CR>

" Don't wrap lines
set nowrap

" Remember more commands and search history
set history=1000

" Have more levels of undo
set undolevels=100

set wildignore=*.swp,*.bak,*.pyc,*.class

" Change the terminals title
set title

" For the lightline plugin, show lightline
so ~/.vim/config/lightline.vim
set laststatus=2

" When on tmux and GNU, for some reason moving the cursor to down, and the
" page scrolls, the background colour of the colour scheme disappears. This
" fixes that. See https://sunaku.github.io/vim-256color-bce.html
set t_ut=
