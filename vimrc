" init
let $vpath=expand('<sfile>:p:h')
if empty(glob(expand($vpath . '/autoload/pathogen.vim')))
  silent exec '!curl --create-dirs -sLo ' . $vpath . '/autoload/pathogen.vim https://raw.githubusercontent.com/tpope/vim-pathogen/master/autoload/pathogen.vim'
endif
exec pathogen#infect()
syntax on
filetype plugin indent on


" gui

try
  colorscheme nord
catch
endtry
set guioptions-=m
set guioptions-=T
set guioptions-=r
set guioptions-=L
set lazyredraw
set noshowmode


" general

set encoding=utf8
set nocompatible
set ttyfast
set history=200
set autowrite
set autoread
set notimeout ttimeout ttimeoutlen=200
set clipboard+=unnamed
set tags=./tags;$HOME
set nowritebackup
set nobackup
set noswapfile
set splitright
set splitbelow
set modeline
set modelines=1
set ffs=unix,dos,mac
set wildmenu
set backspace=indent,eol,start
set gdefault
set hidden
set whichwrap+=<,>,h,l,[,]
set magic
set linebreak
set list
set listchars=eol:¬,tab:-·,space:·,trail:·,precedes:«,extends:»
" search
set hlsearch
set ignorecase
set smartcase
set incsearch
set wrapscan
set foldenable
set foldlevelstart=10
set foldnestmax=10
set foldmethod=indent


" editor config

set number
set autoindent
set smartindent
set ts=2
set sts=2
set sw=2
set expandtab
set smarttab
set nowrap
set textwidth=0
set cursorline
set showmatch
set matchtime=5
set visualbell
set noerrorbells
set laststatus=2
set showcmd
set shortmess=atI
set ruler


" settings

set wildignore=.git,*.o,*.a,*.class,*.mo,*.la,*.so,*.obj,*.swp,*.jpg,*.png,*.xpm,*.gif
set shell=$SHELL
if has('mouse')
  set mouse=a
endif
let mapleader=","
let g:mapleader=","


" plugins settings
" syntastic
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_loc_list_height = 5
let g:syntastic_auto_loc_list = 0
let g:syntastic_check_on_open = 1
let g:syntastic_enable_signs = 0
let g:syntastic_quiet_messages = {'!level': 'errors'}
hi! link SyntasticError ErrorMsg
hi! link SyntasticWarning WarningMsg
let g:syntastic_aggregate_errors = 1
" ctrlp
let g:ctrlp_custom_ignore = {
  \ 'dir':  '\v[\/]\.(git|)|sass-cache|bin$',
  \ 'file': '\v\.(scssc)$'
  \ }
" lightline
let g:lightline = {'colorscheme': 'nord'}
" emmet
let g:user_emmet_expandabbr_key='<c-e>'

" mappings
" insert mode
inoremap <a-space> <esc> " esc with alt-space
inoremap jj <esc> " esc with jj
" normal mode
nnoremap <leader><space> :nohlsearch<CR>
nnoremap <space> za
nnoremap <leader>s :mksession<CR>


" custom functions and variables
