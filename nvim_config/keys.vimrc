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

" switch between the last two files
nnoremap <leader><leader> <c-^>

" get off my lawn
nnoremap <left> :echoe "use h"<cr>
nnoremap <right> :echoe "use l"<cr>
nnoremap <up> :echoe "use k"<cr>
nnoremap <down> :echoe "use j"<cr>

" vim-test mappings
nnoremap <silent> <Leader>t :TestFile<CR>
nnoremap <silent> <Leader>s :TestNearest<CR>
nnoremap <silent> <Leader>l :TestLast<CR>
nnoremap <silent> <Leader>a :TestSuite<CR>
nnoremap <silent> <leader>gt :TestVisit<CR>

" run commands that require an interactive shell
nnoremap <leader>r :runininteractiveshell<space>

" fzf commands
nnoremap <C-p> :Files<CR>

" Personal
nnoremap <C-n> :vnew<Space>
nnoremap <leader>h :nohlsearch<CR>
inoremap <C-c> <Esc>
