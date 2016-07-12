call plug#begin('~/.nvim/plugged')
Plug 'kien/ctrlp.vim'
Plug 'mattn/emmet-vim'
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'ervandew/supertab'
Plug 'tpope/vim-fugitive'
Plug 'ntpeters/vim-better-whitespace'
" Plug 'bling/vim-airline'
Plug 'sjl/gundo.vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'jeetsukumaran/vim-buffergator'
Plug 'itchyny/lightline.vim'
Plug 'tpope/vim-fireplace'
Plug 'leafgarland/typescript-vim'
" Plug 'altercation/vim-colors-solarized'
Plug 'sheerun/vim-wombat-scheme'
Plug 'rking/ag.vim'
" Plug 'morhetz/gruvbox'
Plug 'benekastah/neomake'
" Plug 'kien/rainbow_parentheses.vim'
" Plug 'Raimondi/delimitMate'
Plug 'pangloss/vim-javascript'
Plug 'MarcWeber/vim-addon-mw-utils'
Plug 'tomtom/tlib_vim'
Plug 'garbas/vim-snipmate'
Plug 'chrisbra/csv.vim'
Plug 'sjl/badwolf'
Plug 'tpope/vim-commentary'
Plug 'itchyny/screensaver.vim'
Plug 'elixir-lang/vim-elixir'
Plug 'mxw/vim-jsx'
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'keith/swift.vim'
Plug 'tpope/vim-rails'
" Plug 'bling/vim-bufferline'
" Plug 'mkitt/tabline.vim'
Plug 'taohex/lightline-buffer'





" Optional:
Plug 'honza/vim-snippets'




call plug#end()
set shell=/bin/sh 
let g:cssColorVimDoNotMessMyUpdatetime = 1
syntax on
filetype plugin indent on

" turn of folding
"set nofoldenable
 
map <C-D> :NERDTreeToggle<CR>
 
"set colorscheme
syntax enable

colorscheme wombat


set tabstop=2
set shiftwidth=2
set softtabstop=2
set smarttab
set expandtab
set laststatus=2
set encoding=utf-8
set noerrorbells 
set novisualbell
set t_vb=
set number              " show line numbers
set cursorline          " highlight current line
set wildmenu            " visual autocomplete for command menu
set lazyredraw          " redraw only when we need to
set showmatch           " highlight matching [{()}]
set incsearch           " search as characters are entered
set hlsearch            " highlight matches
set foldenable          " enable folding
set foldlevelstart=10   " open most folds by default
set foldnestmax=10      " 10 nested fold max
let mapleader=" "       " leader is space
" remap ag to , A
nnoremap <leader>a :Ag  
nnoremap gV `[v`]

nnoremap <leader><TAB> :bnext<CR>
" turn off search highlight
nnoremap <leader><space> :nohlsearch<CR>
autocmd! GUIEnter * set vb t_vb=
let g:tagbar_left = 1
let g:tagbar_width = 30
let g:tagbar_show_visibility = 1
let g:tagbar_iconchars = ['▾', '▸'] 

set showtabline=2   " always show tabline

let g:lightline = {
      \ 'tabline': {
        \ 'left': [ [ 'bufferinfo' ], [ 'bufferbefore', 'buffercurrent', 'bufferafter' ], ],
        \ 'right': [ [ 'close' ], ],
      \ },
      \ 'component_expand': {
      \ 'buffercurrent': 'lightline#buffer#buffercurrent2',
      \ },
      \ 'component_function': {
      \ 'bufferbefore': 'lightline#buffer#bufferbefore',
      \ 'bufferafter': 'lightline#buffer#bufferafter',
      \ 'bufferinfo': 'lightline#buffer#bufferinfo',
      \ },
      \ 'colorscheme': 'wombat',
      \   'active': {
      \     'left': [ [ 'mode', 'paste' ],
      \               [ 'fugitive', 'readonly', 'filename', 'modified' ]]
      \   },
      \ 'component_visible_condition': {
      \   'fugitive': '(exists("*fugitive#head") && ""!=fugitive#head())'
      \ },
      \ 'component': {
      \   'fugitive': '%{exists("*fugitive#head")?fugitive#head():""}',
      \ },
      \ }
" lightline-buffer settings
let g:lightline_buffer_logo = ' '
let g:lightline_buffer_readonly_icon = ''
let g:lightline_buffer_modified_icon = '✭'
let g:lightline_buffer_git_icon = ' '
let g:lightline_buffer_ellipsis_icon = '..'
let g:lightline_buffer_expand_left_icon = '◀ '
let g:lightline_buffer_expand_right_icon = ' ▶'
let g:lightline_buffer_active_buffer_left_icon = '['
let g:lightline_buffer_active_buffer_right_icon = ']'
let g:lightline_buffer_separator_icon = ' '

let g:lightline_buffer_show_bufnr = 1
let g:lightline_buffer_rotate = 2
let g:lightline_buffer_fname_mod = ':p:.'
let g:lightline_buffer_excludes = ['vimfiler']

let g:lightline_buffer_maxflen = 30
let g:lightline_buffer_maxfextlen = 3
let g:lightline_buffer_minflen = 16
let g:lightline_buffer_minfextlen = 3
let g:lightline_buffer_reservelen = 20


" "zz" now puts the line 10% above the middle of the screen instead of dead center
if has('float')
  nnoremap <silent> zz :exec "normal! zz" . float2nr(winheight(0)*0.1) . "\<Lt>C-E>"<CR>
endif


" remap arrow keys
nnoremap <Left> :bprev<CR>
nnoremap <Right> :bnext<CR>

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
let g:jsx_ext_required = 0

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

" make ctrlp use c
" let g:ctrlp_match_window = 'bottom,order:ttb'
" let g:ctrlp_switch_buffer = 0
" let g:ctrlp_working_path_mode = 0
" let g:ctrlp_user_command = 'ag %s -l --nocolor --hidden -g ""'
" set wildignore+=*/tmp/*,*.so,*.swp,*.zip     " MacOSX/Linux
" let g:ctrlp_custom_ignore = '\v[\/]\.(git|hg|svn)$'

set wildignore+=*/tmp/*,*.so,*.swp,*.zip 
let g:ctrlp_custom_ignore = '\v[\/]node_modules$'

"Buffer gator
let g:buffergator_viewport_split_policy = 'B'


" airline
" Enable the list of buffers
" let g:airline#extensions#tabline#enabled = 1
" if !exists('g:airline_symbols')
"     let g:airline_symbols = {}
"   endif
"   let g:airline_left_sep = '»'
"   let g:airline_right_sep = '«'
"   let g:airline_symbols.crypt = '🔒'
"   let g:airline_symbols.linenr = '¶'
"   let g:airline_symbols.branch = ''
"   let g:airline_symbols.paste = 'ρ'
"   let g:airline_detect_modified=1
"   let g:airline_detect_crypt=1
"   let g:airline_detect_iminsert=0
"   let g:airline_inactive_collapse=1
" let g:airline#extensions#whitespace#enabled = 0
"   let g:airline_mode_map = {
"       \ '__' : '-',
"       \ 'n'  : 'N',
"       \ 'i'  : 'I',
"       \ 'R'  : 'R',
"       \ 'c'  : 'C',
"       \ 'v'  : 'V',
"       \ 'V'  : 'V',
"       \ '' : 'V',
"       \ 's'  : 'S',
"       \ 'S'  : 'S',
"       \ '' : 'S',
"       \ }
" let g:airline_section_y =  0

"
" Show just the filename
" NeoMake
autocmd! BufWritePost * Neomake
let g:neomake_javascript_enabled_makers = ['eslint']
" let g:neomake_javascript_eslint_maker = {
"   \ 'args': ['--fix'],
"   \ 'errorformat': '%A%f: line %l\, col %v\, %m \(%t%*\d\)',
"   \ }
let g:neomake_cpp_clang_maker = {
    \ 'std':'c++11',
    \ 'stdlib':'libc++',
    \ }

" automatically format based on standard upon save
" autocmd bufwritepost *.js silent !eslint --fix %
set autoread
" let g:neomake_open_list = 2

" Set clipboard to system clipboard
set clipboard+=unnamedplus

" set json to json
au BufRead,BufNewFile *.json setfiletype json

"
au BufRead,BufNewFile *.ejs setfiletype html

let g:location_is_open = 0

" Rainbow parends
" au VimEnter * RainbowParenthesesToggle
" au Syntax * RainbowParenthesesLoadRound
" au Syntax * RainbowParenthesesLoadSquare
" au Syntax * RainbowParenthesesLoadBraces
" terminal esc remap neovim only
tnoremap <Esc> <C-\><C-n>
" enable mouse


set mouse=a
" csv
aug CSV_Editing
    au!
    au BufRead,BufWritePost *.csv :%ArrangeColumn
    au BufWritePre *.csv :%UnArrangeColumn
aug end


vnoremap <C-r> "hy:%s/<C-r>h//gc<left><left><left>



" syntax error

" neomake
nmap <Leader><Space>o :lopen<CR>      " open location window
nmap <Leader><Space>c :lclose<CR>     " close location window
nmap <Leader><Space>, :ll<CR>         " go to current error/warning
nmap <Leader><Space>n :lnext<CR>      " next error/warning
nmap <Leader><Space>p :lprev<CR>      " previous error/warning

" Gundo
nnoremap <F5> :GundoToggle<CR>

" Strip whitespace
nmap <Leader>s :StripWhitespace<CR>
"
