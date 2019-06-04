call plug#begin('~/.vim/plugged')

Plug 'scrooloose/nerdtree'
Plug 'itchyny/lightline.vim'
Plug 'flazz/vim-colorschemes'
Plug 'ctrlpvim/ctrlp.vim'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-surround'
Plug 'StanAngeloff/php.vim'
Plug 'phpactor/phpactor' ,  {'do': 'composer install', 'for': 'php'}
Plug 'ncm2/ncm2'
Plug 'roxma/nvim-yarp'
Plug 'phpactor/ncm2-phpactor'

call plug#end()

autocmd BufEnter * call ncm2#enable_for_buffer()

set autoindent								" copy indent to new line
set autoread								" detect changes made on file from external editor
set backspace=indent,eol,start				" mac specific fix for backspace behaviour
set cmdheight=2								" taller command line
set completeopt=noinsert,menuone,noselect	" for phpactor/ncm2
set cursorline								" highlight current line cursor is on
set expandtab								" expand tab to spaces
set foldcolumn=1							" specify width on side of window
set history=2048							" size of history recorded
set hlsearch								" highlight search results
set incsearch								" show matches as search is typed
set laststatus=2							" always display the status bar
set lazyredraw								" do not redraw when running macros
set nocompatible							" make Vim in a more useful way
set noerrorbells							" no beeps for flashes
set noexpandtab								" use tabs
set noswapfile								" disable swap files
set novisualbell							" no visual flashes
set number									" show line numbers
set ruler									" show cursor position
set shiftwidth=4							" force width
set showcmd									" show command in bottom bar
set showmatch								" briefly jump to matching bracket
set softtabstop=0							" defensively set stop
set tabstop=4								" tab viewed as width 4
set title									" title of window will be set
set wildmenu								" visual autocomplete for command menu
set wrap									" enable word wrap

colorscheme bubblegum-256-dark
syntax on									" syntax highlighting

let g:ctrlp_map = '<C-p>'					" hotkey for CtrlP
let g:ctrlp_cmd = 'CtrlP'					" command for CtrlP
let g:ctrlp_working_path_mode = 'ra'		" nearest ancestor of current file and current directory of file

" toggle relativenumber in gutter
nnoremap <C-l><C-l> :set relativenumber!<CR>

let NERDTreeShowHidden=1
" sidebar toggle a la sublime
map <silent> <C-k><C-b> :NERDTreeToggle<CR>
