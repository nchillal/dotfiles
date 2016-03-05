" Backup Settings
set backup
set noswapfile
set backupdir=~/.vim/tmp/backup//
set undodir=~/.vim/tmp/undo//
set directory=~/.vim/tmp/swap//

" Vundle Settings
set nocompatible
filetype off

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'VundleVim/Vundle.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/vim-easy-align'
Plugin 'bling/vim-airline'
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'honza/vim-snippets'
Plugin 'garbas/vim-snipmate'
Plugin 'scrooloose/syntastic'

call vundle#end() 

filetype plugin indent on

set tabstop=4
set softtabstop=4
set shiftwidth=4
set showmatch
set ruler
set nohlsearch
set incsearch
set cursorline
set wildmenu
set laststatus=2
set guitablabel=%t
syntax on
set showcmd
set autoindent 
set hidden 
set smartindent
set smarttab
set completeopt+=longest,menuone,preview

" Begin of airline settings 
" Load powerline fonts/symbols for airline
let g:airline_powerline_fonts = 1 

" AirLine Theme
:let g:airline_theme='badwolf' 

" Enable the list of buffers
let g:airline#extensions#tabline#enabled = 1

" Show just the filename
let g:airline#extensions#tabline#fnamemod = ':t'

" End of airline settings 

" Show two lines for the status line
set laststatus=2

" Make sure Vim returns to the same line when you reopen a file.
augroup line_return
     au!
         au BufReadPost *
                 \ if line("'\"") > 0 && line("'\"") <= line("$") |
        \     execute 'normal! g`"zvzz' |
        \ endif
augroup END

" Always show the last line
set display+=lastline

" Set encoding to utf-8
set encoding=utf-8

" Set dictionary 
set dictionary=/usr/share/dict/words

" Syntastic settings
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_signs=1
let g:syntastic_error_symbol = '✗✗'
let g:syntastic_style_error_symbol = '✠✠'
let g:syntastic_warning_symbol = '∆∆'
let g:syntastic_style_warning_symbol = '≈≈'
