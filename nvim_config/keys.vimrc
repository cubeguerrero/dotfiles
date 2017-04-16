let mapleader = "\<Space>"
let g:is_posix = 1
let g:html_indent_tags = 'li\|p'

function! InsertTabWrapper()
    let col = col('.') - 1
    if !col || getline('.')[col - 1] !~ '\k'
        return "\<tab>"
    else
        return "\<c-p>"
    endif
endfunction
inoremap <tab> <c-r>=InsertTabWrapper()<cr>
inoremap <s-tab> <c-n>

" get off my lawn
nnoremap <left> :echoe "use h"<cr>
nnoremap <right> :echoe "use l"<cr>
nnoremap <up> :echoe "use k"<cr>
nnoremap <down> :echoe "use j"<cr>

" run commands that require an interactive shell
nnoremap <leader>r :runininteractiveshell<space>

" fzf commands
nnoremap <C-p> :Files<CR>

" Personal
nnoremap <C-n> :vnew<Space>
nnoremap <leader>h :nohlsearch<CR>
inoremap <C-c> <Esc>
