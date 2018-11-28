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
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-sensible'
Plug 'tpope/vim-eunuch'
"
"Linters
"Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'

"Completion Plugins
"Plugin 'valloric/youcompleteme'
Plug 'Shougo/neocomplete.vim'
Plug 'Shougo/neoinclude.vim'
Plug 'rip-rip/clang_complete'
Plug 'artur-shaik/vim-javacomplete2'
Plug 'davidhalter/jedi-vim'
Plug 'raimondi/delimitmate'

"FZF Plugin
Plug '/usr/local/opt/fzf'
Plug 'junegunn/fzf.vim'
Plug 'mileszs/ack.vim'

"Prose Plugins
Plug 'reedes/vim-pencil'
Plug 'reedes/vim-wordy'
Plug 'reedes/vim-lexical'

"Colorschemes
Plug 'flazz/vim-colorschemes'
Plug 'arcticicestudio/nord-vim'

"Git
Plug 'airblade/vim-gitgutter'

"Misc
Plug 'nathanaelkane/vim-indent-guides'
Plug 'easymotion/vim-easymotion'
Plug 'ntpeters/vim-better-whitespace'
Plug 'Harenome/vim-mipssyntax'


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

"Syntastic Settings
"set laststatus=2
"set statusline+=\%{SyntasticStatuslineFlag()}
"set statusline+=%*

"let g:syntastic_always_populate_loc_list = 1
"let g:syntastic_auto_loc_list = 1
"let g:syntastic_check_on_open = 1
"let g:syntastic_check_on_wq = 0

"let g:ycm_global_ycm_extra_conf = "~/.vim/.ycm_extra_conf.py"

"let g:airline#extensions#syntastic#enabled = 1
"let g:airline#extensions#syntastic#error_symbol = 'E:'
"let g:airline#extensions#syntastic#warning_symbol = 'W:'

"Ale Settings
set laststatus=2
set statusline+=%*
let g:airline#extensions#ale#enabled = 1

let g:ale_sign_error = '✘'
let g:ale_sign_warning = '⚠'
highlight ALEErrorSign ctermbg=NONE ctermfg=red
highlight ALEWarningSign ctermbg=NONE ctermfg=yellow

"Emmet Settings
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall
let g:user_emmet_expandabbr_key='<C-e>'

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

"Java completion
autocmd FileType java setlocal omnifunc=javacomplete#Complete

let g:JavaComplete_JavaCompile="/Library/Java/JavaVirtualMachines/jdk1.8.0_20.jdk/Contents/Home/bin/javac"

"NeoComplete Settings
let g:acp_enableAtStartup = 0
let g:neocomplete#enable_at_startup = 1
let g:neocomplete#enable_smart_case = 1
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#enable_auto_close_preview = 0

let g:neocomplete#sources#dictionary#dictionaries = {
    \ 'default' : '',
        \ }

if !exists('g:neocomplete#keyword_patterns')
    let g:neocomplete#keyword_patterns = {}
endif
let g:neocomplete#keyword_patterns['default'] = '\h\w*'

if !exists('g:neocomplete#sources#omni#input_patterns')
  let g:neocomplete#sources#omni#input_patterns = {}
endif

set omnifunc=syntaxcomplete#Complete
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags

inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"

inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
  "return (pumvisible() ? "\<C-y>" : "" ) . "\<CR>"
  " For no inserting <CR> key.
  return pumvisible() ? "\<C-y>" : "\<CR>"
endfunction

"clang_complete settings
if !exists('g:neocomplete#force_omni_input_patterns')
	  let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.c =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*'
let g:neocomplete#force_omni_input_patterns.cpp =
      \ '[^.[:digit:] *\t]\%(\.\|->\)\w*\|\h\w*::\w*'
let g:neocomplete#force_omni_input_patterns.objc =
      \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)'
let g:neocomplete#force_omni_input_patterns.objcpp =
      \ '\[\h\w*\s\h\?\|\h\w*\%(\.\|->\)\|\h\w*::\w*'

let g:clang_complete_auto = 0
let g:clang_auto_select = 0
let g:clang_make_default_keymappings = 0
let g:clang_library_path = '/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/lib/libclang.dylib'

"jedi-vim settings
autocmd FileType python setlocal omnifunc=jedi#completions
let g:jedi#completions_enabled = 0
let g:jedi#auto_vim_configuration = 0
if !exists('g:neocomplete#force_omni_input_patterns')
        let g:neocomplete#force_omni_input_patterns = {}
endif
let g:neocomplete#force_omni_input_patterns.python = '\%([^. \t]\.\|^\s*@\|^\s*from\s.\+import \|^\s*from \|^\s*import \)\w*'
let g:jedi#usages_command = ""

"Neosnippet settings
" For conceal markers.
if has('conceal')
  set conceallevel=2 concealcursor=niv
endif

imap <C-k>     <Plug>(neosnippet_expand_or_jump)
smap <C-k>     <Plug>(neosnippet_expand_or_jump)
xmap <C-k>     <Plug>(neosnippet_expand_target)

"vim-lexical settings
augroup lexical
  autocmd!
  autocmd FileType markdown,mkd call lexical#init()
  autocmd FileType textile call lexical#init()
  autocmd FileType text call lexical#init({ 'spell': 0})
augroup END

