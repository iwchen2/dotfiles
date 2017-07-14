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

Plugin 'junegunn/fzf.vim'
" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

set mouse=a

set t_Co=256
set encoding=utf-8
set guifont=Hack
colorscheme solarized

let hour = strftime("%H")
if 6 <= hour && hour < 18
  set background=light
else
  set background=dark
endif


set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set ruler
set number

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Better Splits
set splitbelow
set splitright
nmap <C-Up> <C-W>k
nmap <C-Down> <C-W>j
nmap <C-Left> <C-W>h
nmap <C-Right> <C-W>l

"highlight matching bracket
set showmatch

"Highlight search
set incsearch

"Show command by status bar
set showcmd

"Buffer Settings
set hidden
nmap <leader>T :enew<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>



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

nnoremap ; :
vnoremap ; :

let mapleader = ','

"Buffer Navigation
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>

"Map Fuzzy Finder to Ctrl+p
nnoremap <silent> <C-p> :FZF<CR>

"Strip WhiteSpace
autocmd BufEnter * EnableStripWhitespaceOnSave
nnoremap <leader>ws :StripWhitespace<CR>

"Airline (status line)
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

let g:airline_powerline_fonts=1
let g:airline_theme='solarized'


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

set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

"Tabline extension of Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extension#tablein#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"
