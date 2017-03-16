call plug#begin('~/.config/nvim/plugged')
" Color Schemes
Plug 'chriskempson/base16-vim'

" General
Plug 'neomake/neomake'
Plug 'christoomey/vim-tmux-navigator'
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-fugitive'
Plug 'travisjeffery/vim-auto-mkdir'
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }

" Editing
Plug 'airblade/vim-gitgutter'
Plug 'ntpeters/vim-better-whitespace'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-endwise'
Plug 'tpope/vim-repeat'
Plug 'tomtom/tcomment_vim'

" Text Object Selection
Plug 'bkad/CamelCaseMotion'
Plug 'michaeljsmith/vim-indent-object'

" Eyecandy
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'dodie/vim-disapprove-deep-indentation'

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

" Haskell
Plug 'neovimhaskell/haskell-vim'

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'slime-lang/vim-slime-syntax'

call plug#end()
