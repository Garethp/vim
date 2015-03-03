" Set tabs to take up four spaces
filetype plugin indent on
set autoindent
set tabstop=4
set shiftwidth=4

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
if has("gui_running")
	colorscheme elflord

	" Remove Toolbar
	set guioptions -=T
endif
