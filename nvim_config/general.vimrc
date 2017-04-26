syntax on
syntax enable

set backspace=2
set nobackup
set nowritebackup
set noswapfile
set history=50
set showcmd
set incsearch
set laststatus=2
set autowrite

" Neovim >= 1.5 or Vim >= 8.0
if (has("termguicolors"))
 set termguicolors
endif

augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile *.md set filetype=markdown
  autocmd BufRead,BufNewFile .{jscs,jshint,eslint}rc set filetype=json
augroup END

" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Use one space, not two, after punctuation.
set nojoinspaces

" Always utf8
set termencoding=utf-8
" set encoding=utf-8
set fileencoding=utf-8

" Numbers
set number
set relativenumber

set wildmode=list:longest,list:full

" Open new split panes to right and bottom, which feels more natural
set splitbelow
set splitright

" Use one space, not two, after punctuation.
set nojoinspaces

" Display extra whitespace
set list listchars=tab:»·,trail:·,nbsp:·

" Transparent Background
hi Normal guibg=NONE ctermbg=NONE

" Set 80 line number
set cc=80

" Set comments italic
highlight Comment gui=italic
highlight htmlArg cterm=italic

" Clipboard error in tmux
set clipboard=unnamed

" setup netrw like NerdTree
let g:netrw_banner = 0
let g:netrw_liststyle = 3
let g:netrw_browse_split = 4
let g:netrw_altv = 1
let g:netrw_winsize = 25
