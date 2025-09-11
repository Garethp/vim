" Make the omni complete only show options, instead of automatically changing
" the value
set completeopt=longest,menuone,noinsert

" Sets smarter php autocompletion
autocmd  FileType  php setlocal omnifunc=phpcomplete_extended#CompletePHP

" Make phpcomplete-extended use the global composer
let g:phpcomplete_index_composer_command="composer"
           
" Make Enter fill in the value
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

" Remaps Ctrl-Space to open the autocomplete menu with the first value
" selected
inoremap <expr> <C-@> pumvisible() ? '<C-x><C-o>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

inoremap <expr> <M-,> pumvisible() ? '<C-n>' :
  \ '<C-x><C-o><C-n><C-p><C-r>=pumvisible() ? "\<lt>Down>" : ""<CR>'

"let g:tsuquyomi_completion_detail = 1


"function! OpenCompletion()
"    if !pumvisible() && ((v:char >= 'a' && v:char <= 'z') || (v:char >= 'A' && v:char <= 'Z'))
"        call feedkeys("\<C-x>\<C-o>", "n")
"    endif
"endfunction

"function! Debounce()
"        let job = job_start(['sh', '-c', 'sleep 5'], #{close_cb: call OpenCompletion()})
"    "call OpenCompletion()
"endfunction

"autocmd InsertCharPre * call Debounce()
