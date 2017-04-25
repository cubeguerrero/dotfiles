call plug#begin('~/.config/nvim/plugged')
" Color Schemes
Plug 'morhetz/gruvbox'

" General
Plug 'w0rp/ale'
Plug 'ntpeters/vim-better-whitespace'
Plug 'travisjeffery/vim-auto-mkdir'

" Git Integration
Plug 'tpope/vim-fugitive'

" Fuzzy File Finding
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'

" Shougo
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'Shougo/denite.nvim', { 'do': ':UpdateRemotePlugins' }

" Navigation
Plug 'christoomey/vim-tmux-navigator'

" Editing
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'

" Text Object Selection
Plug 'michaeljsmith/vim-indent-object'

" Eyecandy
Plug 'itchyny/lightline.vim'

" HTML
Plug 'othree/html5.vim'

" Ruby | Rails
Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby'

" Javascript
Plug 'elzr/vim-json'
Plug 'gavocanov/vim-js-indent'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'digitaltoad/vim-pug'

" CSS | SCSS
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/csscomplete.vim'

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'slime-lang/vim-slime-syntax'

call plug#end()
