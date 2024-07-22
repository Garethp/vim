" If there's an FBTERM environment variable set (It's not default in fbterm
" however we do set an alias for it) then automatically set the terminal to
" fb term
if !empty($FBTERM)
    if !empty($TMUX)
        :set term=screen-256color
    else
        :set term=fbterm
    endif
endif


" When in Ubuntu, for some reason the cursor moving the page down makes the
" background-colour of the terminal bleed in to the colourscheme. This fixes
" that
set t_ut=

colorscheme darcula

if has("gui_running")
    " Remove the toolbar
    set guioptions -=T
endif

" Enable Line Numbers
set number

" Change the title of the terminal
set title

" When in edit mode, highlight the line slightly so it's more visible that
" you're in edit more
autocmd InsertEnter,InsertLeave * set cul!
