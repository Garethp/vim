" Make comment slashes align to the left
let g:NERDDefaultAlign = 'left'

" Map Ctrl-/ to toggle comments
nnoremap <C-_> :call nerdcommenter#Comment('n', 'toggle')<CR>
vnoremap <C-_> :call nerdcommenter#Comment('x', 'toggle')<CR>
inoremap <C-_> <C-c>:call nerdcommenter#Comment('n', 'toggle')<CR>i
