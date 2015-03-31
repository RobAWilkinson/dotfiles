set shell=/bin/sh 
execute pathogen#infect()
syntax on
filetype plugin indent on
 
map <F2> :NERDTreeToggle<CR>
 
"set colorscheme
set background=light


runtime macros/matchit.vim
set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set laststatus=2
set t_Co=256
set guifont=Inconsolata\ for\ Powerline:h15
set encoding=utf-8
set fillchars+=stl:\ ,stlnc:\
set term=xterm-256color
set termencoding=utf-8
set noerrorbells 
set novisualbell
set t_vb=
autocmd! GUIEnter * set vb t_vb=
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_show_visibility = 1
let g:tagbar_iconchars = ['▾', '▸'] 

" "zz" now puts the line 10% above the middle of the screen instead of dead center
if has('float')
  nnoremap <silent> zz :exec "normal! zz" . float2nr(winheight(0)*0.1) . "\<Lt>C-E>"<CR>
endif

" Ruby
autocmd FileType ruby let g:SuperTabDefaultCompletionType = "context"
autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading = 1
autocmd FileType ruby,eruby let g:rubycomplete_rails = 1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global = 1
autocmd FileType ruby,eruby let ruby_minlines = 300
autocmd FileType ruby,eruby let ruby_operators = 1
autocmd FileType ruby,eruby let ruby_space_errors = 1
autocmd FileType ruby,eruby let ruby_fold = 1

autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2
autocmd FileType eruby setlocal tabstop=2 shiftwidth=2 softtabstop=2

" improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold

" Stylesheets
autocmd FileType css setlocal tabstop=2 shiftwidth=2 softtabstop=2  foldmethod=indent
autocmd FileType scss setlocal tabstop=2 shiftwidth=2 softtabstop=2 foldmethod=indent

" Javascript
autocmd BufNewFile,BufRead *.json set ft=javascript
autocmd FileType javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2

" Make
autocmd FileType make setlocal noexpandtab

" Coffeescript
autocmd FileType coffee setlocal shiftwidth=2 tabstop=2 softtabstop=2

" Tintin++
autocmd BufNewFile,BufRead *.tin set filetype=tintin
autocmd FileType tintin setlocal shiftwidth=2 tabstop=2 softtabstop=2

"" C++
autocmd FileType cpp setlocal noexpandtab copyindent preserveindent softtabstop=0 shiftwidth=4 tabstop=4

" Set spell Language
setlocal nospell spelllang=en_us

" Ctrl P bindings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" ctrl p open directory
let g:ctrlp_working_path_mode = 'ra'

" syntastic

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

highlight SyntasticErrorSign guifg=white guibg=red
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_checkers=['']

map <F3> :SyntasticToggleMode <CR>

" airline
" Enable the list of buffers
"
" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline_right_sep=''
let g:airline_left_sep=''


