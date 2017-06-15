set nocompatible              " be iMproved, required

filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
set rtp+=/usr/local/opt/fzf
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

Plugin 'scrooloose/nerdtree'

Plugin 'scrooloose/nerdcommenter'

Plugin 'scrooloose/syntastic'

Plugin 'bling/vim-airline'

Plugin 'vim-airline/vim-airline-themes'

Plugin 'tpope/vim-fugitive'

Plugin 'tpope/vim-surround'

Plugin 'Harenome/vim-mipssyntax'

Plugin 'flazz/vim-colorschemes'

Plugin 'tpope/vim-sensible'

Plugin 'tpope/vim-eunuch'

Plugin 'easymotion/vim-easymotion'

Plugin 'ntpeters/vim-better-whitespace'

Plugin 'valloric/youcompleteme'

Plugin 'raimondi/delimitmate'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


set encoding=utf-8
set guifont=Hack
set background=dark
colorscheme solarized

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set relativenumber
set ruler

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Unmap Arrow keys"
noremap <Up> <NOP>
noremap <Down> <NOP>
noremap <Left> <NOP>
noremap <Right> <NOP>

nmap nt :NERDTreeToggle<CR> 

nmap G Gzz
nmap n nzz
nmap N Nzz
nmap } }zz
nmap { {zz

map <leader>O O<ESC>j
map <leader>o o<ESC>k
let mapleader = ','

nnoremap ; :
vnoremap ; :

let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

let g:airline_powerline_fonts=1


if !exists('g:airline_symbols')
    let g:airline_symbols = {}
    endif

let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let hour = strftime("%H")
if 6 <= hour && hour < 18
  set background=light
else
  set background=dark
endif

colorscheme solarized
