" Make comment slashes align to the left
let g:NERDDefaultAlign = 'left'

" Map Ctrl-/ to toggle comments
nnoremap <C-_> :call NERDComment('n', 'toggle')<CR>
vnoremap <C-_> :call NERDComment('x', 'toggle')<CR>
inoremap <C-_> <C-c>:call NERDComment('n', 'toggle')<CR>i
