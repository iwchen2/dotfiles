"Vim-Plug Plugins
call plug#begin('~/.vim/plugged')

"Commenting/NerdTree/Tagbar
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'

"Airline/Statusline Plugins
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'

"tpope plugins
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-fugitive'

"Linters
Plug 'w0rp/ale'

"Completion Plugins
"Plugin 'valloric/youcompleteme'

"FZF Plugin
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

"Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'arcticicestudio/nord-vim'

"Git
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'

"Misc
Plug 'easymotion/vim-easymotion'
Plug 'ntpeters/vim-better-whitespace'


" All of your Plugins must be added before the following line
call plug#end()            " required
set nocompatible

set mouse=a
syntax on
set t_Co=256
set encoding=utf-8
set guifont=Hack
set termguicolors

"Nord Settings
"let g:nord_italic=1
"let g:nord_underline=1
let g:nord_italic_comments=1
let g:nord_comment_brightness=12
let g:nord_cursor_line_number_background=1
colorscheme nord

set expandtab
set tabstop=2
set shiftwidth=2
set autoindent
set smartindent
set ruler
set number

set backspace=indent,eol,start

"Open Nerdtree if blank document
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
nnoremap zC zM
nnoremap zO zR

"Commands for editing dotfiles
command Bashprofile execute 'e $BASHPROFILE'
command Bashrc execute 'e $BASHRC'
command Zshrc execute 'e $ZSHRC'
command Vimrc execute 'e $VIMRC'
command Nvimrc execute 'e $NVIMRC'


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

"Persistent Undo
set undofile "Maintain undo history between sessions
set undodir=~/.vim/undodir

"Buffer Navigation
nnoremap <F5> :buffers<CR>:buffer<Space>
nnoremap <leader>n :bn<CR>
nnoremap <leader>p :bp<CR>

"Buffer Settings
set hidden
nmap <leader>T :enew<CR>
nmap <leader>bq :bp <BAR> bd #<CR>
nmap <leader>bl :ls<CR>

"Strip WhiteSpace
autocmd BufEnter * EnableStripWhitespaceOnSave
nnoremap <leader>ws :StripWhitespace<CR>

"Airline (status line)
let g:airline#extensions#branch#enabled=1
"let g:airline_section_b = '%{strftime("%I:%M%p")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

let g:airline_powerline_fonts=1
let g:airline_theme='nord'


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


"Ale Settings
set laststatus=2
set statusline+=%*
let g:airline#extensions#ale#enabled = 1

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

"Tagbar Settings
nmap tb :TagbarToggle<CR>

"Ag/Ack Settings
let g:ackprg = 'ag --vimgrep'

"fzf settings
nnoremap <silent> <C-p> :FZF<CR>
nnoremap <silent> <leader>f :Files<CR>
nnoremap <silent> <leader>a :Buffers<CR>
nnoremap <silent> <leader>t :Tags<CR>

nnoremap <silent> <leader>A :Windows<CR>
nnoremap <silent> <leader>; :BLines<CR>
nnoremap <silent> <leader>o :BTags<CR>
nnoremap <silent> <leader>O :Tags<CR>
nnoremap <silent> <leader>? :History<CR>
nnoremap <silent> <leader>/ :execute 'Ag ' . input('Ag/')<CR>
nnoremap <silent> <leader>. :AgIn

nnoremap <silent> K :call SearchWordWithAg()<CR>
vnoremap <silent> K :call SearchVisualSelectionWithAg()<CR>
nnoremap <silent> <leader>gl :Commits<CR>
nnoremap <silent> <leader>ga :BCommits<CR>
nnoremap <silent> <leader>ft :Filetypes<CR>


