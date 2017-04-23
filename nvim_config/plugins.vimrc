filetype plugin indent on

" Ale
let g:ale_lint_on_text_changed= 0
let g:ale_lint_on_save= 1
let g:ale_sign_error = '⨉'
let g:ale_sign_warning = '⚠'
let g:ale_statusline_format = ['⨉ %d', '⚠ %d', '⬥ ok']

" Color scheme
let base16colorspace=256
syntax on
set background=dark
colorscheme base16-eighties
hi Normal guibg=NONE ctermbg=NONE

" fzf config
let g:fzf_nvim_statusline = 0 " disable statusline overwriting

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

" filetype
autocmd BufNewFile,BufRead *.slim setlocal filetype=slim
