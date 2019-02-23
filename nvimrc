call plug#begin('~/.local/share/nvim/plugged')
"Where Plugins go

"nerdTree/nerdComment/tagbar
Plug 'scrooloose/nerdtree'
Plug 'scrooloose/nerdcommenter'
Plug 'majutsushi/tagbar'

"Linter
Plug 'neomake/neomake'

"Airline/Statusline
Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'flazz/vim-colorschemes'

"tpope
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'

"Completion Plugins
Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
Plug 'artur-shaik/vim-javacomplete2'
Plug 'zchee/deoplete-clang'
Plug 'carlitux/deoplete-ternjs', { 'do': 'npm install -g tern' }
Plug 'zchee/deoplete-jedi'
Plug 'poppyschmo/deoplete-latex'
Plug 'Shougo/neoinclude.vim'

"Snippets
Plug 'Shougo/neosnippet.vim'
Plug 'Shougo/neosnippet-snippets'

"FZF Plugin
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

"Syntax
Plug 'sheerun/vim-polyglot'
Plug 'Harenome/vim-mipssyntax'

"Git
Plug 'airblade/vim-gitgutter'

"Misc Plugins
Plug 'nathanaelkane/vim-indent-guides'
Plug 'christoomey/vim-tmux-navigator'
Plug 'lervag/vimtex'
Plug 'xuhdev/vim-latex-live-preview', { 'for': 'tex'}
Plug 'easymotion/vim-easymotion'
Plug 'ntpeters/vim-better-whitespace'
Plug 'raimondi/delimitmate'

call plug#end()

set mouse=a
set encoding=utf-8
set t_Co=256
set termguicolors
set guifont=Hack
colorscheme gruvbox
set background=dark


"Open at last position
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

"let hour = strftime("%H")
"if 6 <= hour && hour < 20
  "set background=light
"else
  "set background=dark
"endif


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
"set foldmethod=syntax
nnoremap zC zM
nnoremap zO zR

"Commands for editing dotfiles
command Bashprofile execute 'e $BASHPROFILE'
command Bashrc execute 'e $BASHRC'
command Zshrc execute 'e $ZSHRC'
command Vimrc execute 'e $VIMRC'
command Nvimrc execute 'e $NVIMRC'

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
let maplocalleader = '\'

"Persistent Undo
set undofile "Maintain undo history between sessions
set undodir=~/.vim/undodir


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

"Strip WhiteSpace
autocmd BufEnter * EnableStripWhitespaceOnSave
nnoremap <leader>ws :StripWhitespace<CR>

"Ag/Ack Settings
let g:ackprg = 'ag --vimgrep'

"FZF Settings
nmap <C-p> :Files<CR>
nmap <leader>r :Tags<CR>
nmap <leader>b :Buffers<CR>

"Airline (status line)
let g:airline#extensions#branch#enabled=1
"let g:airline_section_b = '%{strftime("%I:%M%p")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'

let g:airline_powerline_fonts=1
let g:airline_theme='gruvbox'


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
"set statusline+=%#warningmsg#
set statusline+=\ %#ErrorMsg#%{neomake#statusline#QflistStatus('qf:\ ')}
set statusline+=%*

"YCM settings
let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"Neomake settings
let g:neomake_open_list = 2
let g:airline#extensions#neomake#enabled = 1
let g:neomake_cpp_enable_makers=['clang']
let g:neomake_cpp_clang_args = ["-std=c++11", "-Wextra", "-Wall", "-fsanitize=undefined","-g"]

autocmd! BufWritePost,BufEnter * Neomake
autocmd! VimLeave * let g:neomake_verbose = 0

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

"java completion
autocmd FileType java setlocal omnifunc=javacomplete#Complete

"deoplete settings
let g:deoplete#enable_at_startup = 1
let g:deoplete#sources#clang#libclang_path="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib"
let g:deoplete#sources#clang#clang_header="/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/clang"

autocmd CompleteDone * silent! pclose!
set completeopt-=preview

inoremap <expr><tab> pumvisible() ? "\<c-n>" : "\<tab>"


if !exists('g:deoplete#omni#input_patterns')
    let g:deoplete#omni#input_patterns = {}
endif
let g:deoplete#omni#input_patterns.tex = g:vimtex#re#deoplete

"let g:python3_host_prog='/usr/local/Cellar/python3/3.7.0/bin/python3'


"vimtex settings
let g:tex_flavor = 'latex'
let g:deoplete#sources#latex#include_web_math = 1
let g:deoplete#sources#latex#include_misc = 1

"latex preview settings
let g:livepreview_previewer = 'open -a Skim'
