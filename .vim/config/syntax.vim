" Syntax Highlighting and such
filetype on
filetype plugin on
syntax enable

" Removing the auto-conceal for json files
let g:vim_json_syntax_conceal = 0

" In PHP, remove trailing whitespace on save
autocmd BufWritePre *.php %s/\s\+$//e
