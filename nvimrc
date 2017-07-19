call plug#begin('~/.local/share/nvim/plugged')
"Where Plugins go
Plug 'scrooloose/nerdtree'

Plug 'scrooloose/nerdcommenter'

Plug 'neomake/neomake'

Plug 'bling/vim-airline'

Plug 'vim-airline/vim-airline-themes'

Plug 'tpope/vim-fugitive'

Plug 'tpope/vim-surround'

Plug 'Harenome/vim-mipssyntax'

Plug 'flazz/vim-colorschemes'

Plug 'tpope/vim-sensible'

Plug 'tpope/vim-eunuch'

Plug 'easymotion/vim-easymotion'

Plug 'ntpeters/vim-better-whitespace'

Plug 'valloric/youcompleteme', {'do': 'python2 install.py --clang-completer --system-libclang --system-boost'}

Plug 'raimondi/delimitmate'

Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

Plug 'junegunn/fzf.vim'

Plug 'mattn/emmet-vim'

Plug 'majutsushi/tagbar'

call plug#end()


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

set backspace=indent,eol,start

autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Better Splits
set splitbelow
set splitright
nmap <C-k> <C-W>k
nmap <C-j> <C-W>j
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

"highlight matching bracket
set showmatch

"Highlight search
set incsearch

"Show command by status bar
set showcmd

"Folding
set foldmethod=syntax
nnoremap zC zM
nnoremap zO zR

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

"Terminal Mappings
if exists(':terminal')
  tnoremap <Esc> <C-\><C-n>
  tnoremap <a-j> <c-\><c-n><c-w>j
  tnoremap <a-k> <c-\><c-n><c-w>k
  tnoremap <a-h> <c-\><c-n><c-w>h
  tnoremap <a-l> <c-\><c-n><c-w>l
endif

nnoremap <a-j> <c-w>j
nnoremap <a-k> <c-w>k
nnoremap <a-h> <c-w>h
nnoremap <a-l> <c-w>l
vnoremap <a-j> <c-\><c-n><c-w>j
vnoremap <a-k> <c-\><c-n><c-w>k
vnoremap <a-h> <c-\><c-n><c-w>h
vnoremap <a-l> <c-\><c-n><c-w>l
inoremap <a-j> <c-\><c-n><c-w>j
inoremap <a-k> <c-\><c-n><c-w>k
inoremap <a-h> <c-\><c-n><c-w>h
inoremap <a-l> <c-\><c-n><c-w>l
cnoremap <a-j> <c-\><c-n><c-w>j
cnoremap <a-k> <c-\><c-n><c-w>k
cnoremap <a-h> <c-\><c-n><c-w>h
cnoremap <a-l> <c-\><c-n><c-w>l
au WinEnter *pid:* call feedkeys('i')

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
let g:airline#extensions#branch#enabled=1
"let g:airline_section_b = '%{strftime("%I:%M%p")}'
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

"Tabline extension of Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#fnamemod = ':t'
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ''
let g:airline#extensions#tabline#buffer_nr_show = 1

set laststatus=2
set statusline+=%#warningmsg#
set statusline+=%*

"YCM settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"Neomake settings
let g:neomake_open_list = 2
let g:airline#extensions#neomake#enabled = 1

autocmd! BufWritePost,BufEnter * Neomake

aug QFClose
  au!
  au WinEnter * if winnr('$') == 1 && getbufvar(winbufnr(winnr()), "&buftype") == "quickfix"|q|endif
aug END


"Emmet Settings
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_expandabbr_key='<C-e>'

"Tagbar Settings
nmap tb :TagbarToggle<CR>

