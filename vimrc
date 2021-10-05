" ## Void-laptop .vimrc

" Vundle stuff
" ---------------------------------------------------
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
" jedi-vim autocoplete for python plugin
Plugin 'davidhalter/jedi-vim'
"Plugin 'JamshedVesuna/vim-markdown-preview'
"Bundle 'vim-ruby/vim-ruby'
Plugin 'preservim/nerdtree'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'rust-lang/rust.vim'
Plugin 'dense-analysis/ale'

" ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just
" :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to
"                     auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
" ----------------------------------------------------

" Keyboard shortcuts for moving between splits
nmap <silent> <c-k> :wincmd k<CR>
nmap <silent> <c-j> :wincmd j<CR>
nmap <silent> <c-h> :wincmd h<CR>
nmap <silent> <c-l> :wincmd l<CR>

" Colorscheme   append hi Normal guibg=NONE ctermbg=NONE to the /usr/share/vim/vim82/color/<colorscheme>.vim to get a
" transparent terminal background
colo deus
" Nice full higlighting of the current line :)
set cursorline
" The below two have to get added into the colorshcemes file to work properly
"highlight Cursorline cterm=NONE ctermbg=237 ctermfg=NONE guibg=darkgray guifg=NONE
"highlight CursorlineNR cterm=NONE ctermbg=237 ctermfg=NONE guibg=darkgray guifg=NONE

set number		" #To show line numbers
set textwidth=128	" #Line wrap
set linebreak		" #To breaklines at word
set showbreak=+++	" #Prefix for the warp-broken line

set showmatch		" #To highlight the matching brace
set hlsearch		" #To highlight all the search results
set term=xterm
syntax on               " #Syntax highlight

set smartcase		" #Enable smartcase search
set ignorecase		" #Be always case sensitive
set incsearch		" #To search for strings incrementally

set autoindent		" #Auto-indent new lines
set expandtab		" #Use spaces instead of tabs
set softtabstop=4	" #Number of space per tab
set shiftwidth=4	" #Number of auto-indent spaces
set smartindent		" #Enable smart indent
set smarttab		" #Enable smart tabs

set ruler		" #Show row & column info
set undolevels=100	" #Number of untos

set backspace=indent,eol,start	" #Backspace behaviour

set omnifunc=syntaxcomplete#Complete

set lazyredraw

"airline stuff
let g:airline_powerline_fonts = 1
let g:airline_theme = 'deus'

" NERDTree Stuff
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists("s:std_in") | exe 'NERDTree' argv()[0] | wincmd p | ene | exe 'cd ' .argv()[0] | end
"autocmd BufEnter * if bufname('#') =~# "^NERD_tree_" && winnr('$') > 1 | b# | endif

"nnoremap <Leader>f :NERDTreeToggle<Enter>
map <C-n> :NERDTreeToggle<CR>
"let g:NERDTreeDirArrowExpandable = '▸'
"let g:NERTreeDirArrowCollapsible = '▾'
let NERDTreeQuitOnOpen = 1
let NERDTreeMinimalUI = 1
let NERDTreeDirArrows = 1

" ale options
let g:ale_completion_enabled = 1
