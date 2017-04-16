filetype plugin indent on

" Ale
let g:ale_sign_column_always = 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

" Color scheme
let base16colorspace=256
syntax on
set background=dark
colorscheme base16-monokai
hi Normal guibg=NONE ctermbg=NONE

" Deoplete
let g:deoplete#enable_at_startup = 1

" fzf config
let g:fzf_nvim_statusline = 0 " disable statusline overwriting

" haskell-vim
let g:haskell_enable_quantification = 1   " to enable highlighting of `forall`
let g:haskell_enable_recursivedo = 1      " to enable highlighting of `mdo` and `rec`
let g:haskell_enable_arrowsyntax = 1      " to enable highlighting of `proc`
let g:haskell_enable_pattern_synonyms = 1 " to enable highlighting of `pattern`
let g:haskell_enable_typeroles = 1        " to enable highlighting of type roles
let g:haskell_enable_static_pointers = 1  " to enable highlighting of `static`

" JS
let g:jsx_ext_required = 0

" Airline
let g:airline_theme = 'base16_tomorrow'
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#show_buffers = 0

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

" on save, strip whitespace
autocmd BufWritePre * StripWhitespace

" filetype
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
