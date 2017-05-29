" Vim Configuration for Vim8
" Author: Cuthbert Guerrero
" Contact: cuthbert.guerrero@gmail.com
" Github: https://github.com/fatbotdesigns

" Start vim-plug
" Install the plugins we're going to use
call plug#begin('~/.vim/plugged')
" General
" Sensible Defaults
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-sleuth'

" Beautify
Plug 'rakr/vim-one'
Plug 'dracula/vim'
Plug 'itchyny/lightline.vim'

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

" HTML
Plug 'othree/html5.vim'

" CSS/SCSS
Plug 'cakebaker/scss-syntax.vim'
Plug 'hail2u/vim-css3-syntax'
Plug 'othree/csscomplete.vim'

" JavaScript
Plug 'elzr/vim-json'
Plug 'gavocanov/vim-js-indent'
Plug 'mxw/vim-jsx'
Plug 'pangloss/vim-javascript'
Plug 'digitaltoad/vim-pug'

" Ruby
Plug 'slim-template/vim-slim'
Plug 'vim-ruby/vim-ruby'

" Elixir
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'slime-lang/vim-slime-syntax'

" Initialize plugin system
call plug#end()

" General Configuration
" Softtabs, 2 spaces
set tabstop=2
set shiftwidth=2
set shiftround
set expandtab

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
colorscheme dracula

" Configuration for Plugins

