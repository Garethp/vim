" Make the omni complete only show options, instead of automatically changing
" the value
set completeopt=longest,menuone

" Map the omnicomplete to Ctrl-Space
inoremap <C-@> <C-n>
           
" Make Enter fill in the value
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Make the first suggestion value default selected
inoremap <expr> <C-@> pumvisible() ? '<C-n>' :
  \ '<C-n><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'
