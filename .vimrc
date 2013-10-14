set runtimepath+=~/.vim_runtime
execute pathogen#infect()

"set auton paste indenting off
set pastetoggle=<a>
" auto set NERDTree
" autocmd VimEnter * NERDTree
" autocmd VimEnter * wincmd p

set number
"set lines of history VIM to remember
set history=700
"Enable filetype plugins
filetype plugin on
filetype indent on

"set auto read when the file is changed
set autoread

"change the save file key
let mapleader = ","
let g:mapleader = ","
map <leader>. :CtrlP<cr>

"Fast saving
nmap <leader>w :w!<cr>

" Set 7 lines to the cursor
set so=7
" Turn on the Wild menu
set wildmenu
"Igore compiled files
set wildignore=*.o,*~,*.pyc
"Always show current position
set ruler

set cmdheight=2
set hid

set backspace=eol,start,indent
set whichwrap+=<,>,h,l

" Ignore cases when searching
set ignorecase

set smartcase

set hlsearch

set incsearch

set lazyredraw

set magic

set showmatch

set mat=2

"No annoyting sound on errors
set noerrorbells
set novisualbell
autocmd GUIEnter * set vb t_vb=
autocmd VimEnter * set vb t_vb=
set tm=500

:command WQ wq
:command Wq wq
:command W w
:command Q q

syntax enable

set encoding=utf8
set ffs=unix,dos,mac

set nobackup
set nowb
set noswapfile

set expandtab

set shiftwidth=4
set tabstop=4

"Linebreak on 500 characters
set lbr
set tw=500

"Auto indent smart indent
set ai
set si

map j gj
map k gk

map <space> /
map <space>b ?

"Disable highlight when <leader><cr> is pressed
map <silent> <leader><cr> :noh<cr>
nnoremap k gk

" Add Ctrl-P
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_working_path_mode = 'ra'
nnoremap <C-p> :CtrlP<cr>

"Switch between split windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

map <leader>bd :Bclose<cr>
" Close all the buffers
map <leader>ba :1,1000 bd!<cr>

"Userful mappings for managing tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tw :tabclose<cr>
map <leader>tm :tabmove

"Opens a new path on current path
map <leader>te :tabedit <c-r>=expand(%:p:h")<cr>/

"Swtich CWD to the directory of the open buffer
map <leader>cd :cd %:p:h<cr>:pwd<cr>

try 
    set switchbuf=useopen,usetab,newtab
    set stal=2
catch
endtry

"Return to last edit postion when opening files
autocmd BufReadPost *
    \ if line("'\"") > 0 && line ("'\"") <= line("$") |
    \   exe "normal! g\"" |
    \ endif
set viminfo^=%

set laststatus=2
"Format the status line
set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{getcwd()}%h\ \ \ Line:\ %l

map 0 ^

"Move a line of text using ALT+[jk] or Command+[jk] one mac
nmap <M-j> mz:m+<cr>`z
nmap <M-k> mz:m-2<cr>`z
vmap <M-j> :m'>+<cr>`<my`>mzgv`yo`z
vmap <M-k> :m'<-2<cr>`>my`<mzgv`yo`z

if has("mac") || has("macunix")
    nmap <D-j> <M-j>
    nmap <D-k> <M-k>
    vmap <D-j> <M-j>
    vmap <D-k> <M-k>
endif 

map <leader>l :tabn<CR>
map <leader>. :tabp<CR>

nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

noremap <right> <nop>

source ~/.vim_runtime/vimrcs/basic.vim
source ~/.vim_runtime/vimrcs/filetypes.vim
source ~/.vim_runtime/vimrcs/plugins_config.vim
source ~/.vim_runtime/vimrcs/extended.vim

try
source ~/.vim_runtime/my_configs.vim
catch
endtry

inoremap <C-h> <C-o>h
inoremap <C-j> <C-o>j
inoremap <C-k> <C-o>k
inoremap <C-l> <C-o>l
inoremap <C-e> <Esc>
