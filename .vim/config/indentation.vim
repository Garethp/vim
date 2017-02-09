" Set indentation
filetype plugin indent on
set autoindent
set smartindent
set tabstop=4
set shiftwidth=4
set backspace=indent,eol,start
set expandtab

" When in Command mode or Visual Mode, have the tab key indent the line
nnoremap <Tab> >>
vnoremap <Tab> >

" Set Shift-Tab for unindent in command and insert mode
nnoremap <S-Tab> <<
inoremap <S-Tab> <C-d>
vnoremap <S-Tab> <
