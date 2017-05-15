set nocompatible              " required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

Plugin 'gmarik/Vundle.vim'		" let Vundle manage Vundle, required
Plugin 'tmhedberg/SimpylFold'		" Code Folding
Plugin 'vim-scripts/indentpython.vim'	" Auto-indentation Plugin 
Plugin 'scrooloose/nerdtree'		" Tree on side
Plugin 'hdima/python-syntax'		" Python Syntax
Plugin 'kien/ctrlp.vim'			" Search other files
Plugin 'Lokaltog/powerline', {'rtp': 'powerline/bindings/vim/'}

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

" Setting Split Settings
set splitbelow			" direction of split (:sp)
set splitright			" direction of vertical split (:vs) 
nnoremap <C-J> <C-W><C-J> 	" Ctrl-j move to the split below
nnoremap <C-K> <C-W><C-K>	" Ctrl-k move to the split above
nnoremap <C-L> <C-W><C-L>	" Ctrl-l move to the split to the right
nnoremap <C-H> <C-W><C-H>	" Ctrl-h move to the split to the left

" Basic Setup
syntax on
set encoding=utf-8		" UTF-8 Support
set nu				" set line numbering
set clipboard=unnamed		" Allows to copy and paste 
set backspace=indent,eol,start	" Allows backspace
set backspace=2			" Backspace between lines
inoremap jk <Esc>		" change from insert to norm mode
set noswapfile			" set no swap file
colorscheme solarized8_dark	" set colorscheme
let mapleader = "\<Space>"


"---------- Python Specific Settings -----------
" Indentation for Different File Types
au BufNewFile,BufRead *.py
    \ set tabstop=4 |
    \ set softtabstop=4 |
    \ set shiftwidth=4 |
    \ set textwidth=79 |
    \ set expandtab |
    \ set autoindent |
    \ set fileformat=unix |

let python_highlight_all=1
"-----------------------------------------------

"------- Other File Specific Settings ----------
au BufNewFile,BufRead *.js,*.html,*.css
    \ set tabstop=2 |
    \ set softtabstop=2 |
    \ set shiftwidth=2 |

" Used to preview .md file
autocmd BufRead *.md nnoremap <leader>p :exe ':silent !open -a "/Applications/Google Chrome.app" %'<CR>:redr!<CR>

"-----------------------------------------------

"---------- Plugin Specific Settings -----------
" NerdTree Settings
map <C-n> :NERDTreeToggle<CR>
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

" Powerline Settings
set laststatus=2 
let g:Powerline_symbols = "fancy"

" Code Folding
let g:SimpylFold_docstring_preview = 1
nnoremap <space> za 		" Enable folding with the spacebar
"-----------------------------------------------
