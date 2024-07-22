" This must be first, because it changes other options as side effect
set nocompatible

" Set tabs to take up four spaces
execute pathogen#infect()
Helptags

" Show matching parenthesis
set showmatch

" Highlight search terms
set hlsearch

" Show information on currently running command
set showcmd

" Use english for spellchecking, but don't use it by default
set spl=en_au spell
set nospell

" Enable mouse support in console
set mouse=a

" Don't wrap lines, but do show a light column limit at 120 columns
set nowrap
set colorcolumn=120

" Remember more commands and search history
set history=1000

" Have more levels of undo
set undolevels=100

set wildignore=*.swp,*.bak,*.pyc,*.class

" Set the clipboard to the system clipboard
set clipboard=unnamed
if has('unnamedplus')
    set clipboard=unnamed,unnamedplus
endif

" Load various config files
so ~/.vim/config/lightline.vim
so ~/.vim/config/nerdcommenter.vim
so ~/.vim/config/ale.vim
so ~/.vim/config/autocomplete.vim
so ~/.vim/config/theme.vim
so ~/.vim/config/indentation.vim
so ~/.vim/config/markdown.vim
so ~/.vim/config/syntax.vim
so ~/.vim/config/nerdtree.vim
so ~/.vim/config/keymappings.vim
so ~/.vim/config/navigation.vim
so ~/.vim/config/tmux.vim


if has("unix")
  let s:uname = system("uname -s")
  if s:uname == "Darwin\n"
      so ~/.vim/config/osx.vim
  endif
endif
