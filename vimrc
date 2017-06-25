" Vim Configuration for Vim8
" Author: Cuthbert Guerrero
" Contact: cuthbert.guerrero@gmail.com
" Github: https://github.com/cubeguerrero

" Start vim-plug
" Install the plugins we're going to use
call plug#begin('~/.vim/plugged')
" General
" Sensible Defaults
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'
Plug 'travisjeffery/vim-auto-mkdir'

" Completion Framework
Plug 'Shougo/neocomplete'
Plug 'Shougo/neosnippet'
Plug 'Shougo/neosnippet-snippets'

" Tmux Integration
Plug 'christoomey/vim-tmux-navigator'

" Beautify
Plug 'dracula/vim'
Plug 'w0ng/vim-hybrid'
Plug 'cocopon/lightline-hybrid.vim'
Plug 'itchyny/lightline.vim'
Plug 'Yggdroot/indentLine'

" Fuzzy File Finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Git Integration
Plug 'tpope/vim-git'
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'

" Editing
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-commentary'
Plug 'w0rp/ale'

" HTML
Plug 'othree/html5.vim'

" CSS/SCSS
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'

" JavaScript
Plug 'elzr/vim-json'
Plug 'gavocanov/vim-js-indent'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'digitaltoad/vim-pug'
Plug 'mustache/vim-mustache-handlebars'

" Ruby
Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby'

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'slime-lang/vim-slime-syntax'

" Solidity
Plug 'tomlion/vim-solidity'

" Initialize plugin system
call plug#end()

" General Configuration
" Filetype plugin
filetype plugin on
filetype plugin indent on

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Split open below
set splitbelow

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Always utf8
set termencoding=utf-8
set fileencoding=utf-8

" Line Numbers
set number
set relativenumber

" Set 80 line number
set cc=80

" Set comments italic
highlight Comment gui=italic
highlight htmlArg cterm=italic

" Clipboard error in tmux
set clipboard=unnamed

" Set colorscheme
set background=dark
let g:hybrid_custom_term_colors = 1
colorscheme hybrid

" Configuration for Plugins
" Ale
let g:ale_lint_on_text_changed= 0
let g:ale_lint_on_save= 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

" Vim-JavaScript
let g:jsx_ext_required = 0

" Vim Surround
"" Django
let b:surround_{char2nr("v")} = "{{ \r }}"
let b:surround_{char2nr("{")} = "{{ \r }}"
let b:surround_{char2nr("%")} = "{% \r %}"
let b:surround_{char2nr("b")} = "{% block \1block name: \1 %}\r{% endblock \1\1 %}"
let b:surround_{char2nr("i")} = "{% if \1condition: \1 %}\r{% endif %}"
let b:surround_{char2nr("w")} = "{% with \1with: \1 %}\r{% endwith %}"
let b:surround_{char2nr("f")} = "{% for \1for loop: \1 %}\r{% endfor %}"
let b:surround_{char2nr("c")} = "{% comment %}\r{% endcomment %}"

" Lightline
let g:lightline = {
      \ 'colorscheme': 'hybrid',
      \ 'active': {
      \   'left': [ [ 'mode', 'paste' ],
      \             [ 'gitbranch', 'readonly', 'filename', 'modified' ] ]
      \ },
      \ 'component_function': {
      \   'gitbranch': 'fugitive#head'
      \ },
      \ }

" Neocomplete


" Key Configuration
let mapleader = ","

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

" Must not use arrow keys
nnoremap <left> :echoe "use h"<cr>
nnoremap <right> :echoe "use l"<cr>
nnoremap <up> :echoe "use k"<cr>
nnoremap <down> :echoe "use j"<cr>

" FZF
nnoremap <C-p> :Files<cr>
nnoremap <Leader>fb :Buffers<cr>
nnoremap <Leader>fl :BLines<cr>
nnoremap <Leader>fL :Lines<cr>
nnoremap <Leader>fg :GFiles<cr>
nnoremap <Leader>fG :GFiles?<cr>
nnoremap <Leader>fc :Commits<cr>
nnoremap <Leader>fs :Ag<SPACE>
imap <c-x><c-l> <plug>(fzf-complete-line)

" Custom keymappings
nnoremap <C-n> :vnew<SPACE>


