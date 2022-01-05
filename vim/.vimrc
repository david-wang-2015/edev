" Some of the configurations are derived from
" https://github.com/yangyangwithgnu/use_vim_as_ide/blob/master/.vimrc
" with CC0 1.0 Universal as the license.
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
" Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
" Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
" Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Avoid a name conflict with L9
" Plugin 'user/L9', {'name': 'newL9'}

" plugins
" The git wrapper plugin
Plugin 'tpope/vim-fugitive'
Plugin 'airblade/vim-gitgutter'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'yegappan/grep'
Plugin 'mileszs/ack.vim'
Plugin 'dyng/ctrlsf.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'scrooloose/nerdtree'
"Plugin 'fholgado/minibufexpl.vim'
Plugin 'majutsushi/tagbar'
Plugin 'scrooloose/syntastic'
Plugin 'gcmt/wildfire.vim'
Plugin 'easymotion/vim-easymotion'
Plugin 'suan/vim-instant-markdown'
Plugin 'editorconfig/editorconfig-vim'
Plugin 'ctrlpvim/ctrlp.vim'

" colors
Plugin 'tomasr/molokai'
" Plugin 'altercation/vim-colors-solarized'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line
"

" ---------------------------------------------------------
" Common configurations
" The leader key
let mapleader=";"

" Go the the beginner of the line
nmap <Leader>b 0
" Go the the end of the line
nmap <Leader>e $

" Copy to system clipboard (copy something outside of vim)
vnoremap <Leader>y "+y
" Paste from system clipboard
nmap <Leader>p "+p

" Close current window
nmap <Leader>q :q<CR>
" Save (current window)
nmap <Leader>w :w<CR>
" Save all windows and exit vim
nmap <Leader>WQ :wa<CR>:q<CR>
" Quit vim without any save
nmap <Leader>Q :qa!<CR>
" Resize the window
nnoremap <Leader>> <C-w>>
nnoremap <Leader>< <C-w><


" The hotkey to naviate the windows
" Jump to the window on the right side
nnoremap <Leader>lw <C-W>l
nnoremap <Leader><C-l> <C-W>l
nnoremap <Leader><C-l> <C-W>l
" Jump to the window on the left side
nnoremap <Leader>hw <C-W>h
nnoremap <Leader><C-h> <C-W>h
nnoremap <Leader><C-h> <C-W>h
" Jump to the window above
nnoremap <Leader>kw <C-W>k
nnoremap <Leader><C-k> <C-W>k
nnoremap <Leader><C-k> <C-W>k
" Jump to the window below
nnoremap <Leader>jw <C-W>j
nnoremap <Leader><C-j> <C-W>j
nnoremap <Leader><C-j> <C-W>j

" Incremental search
set incsearch

" Ignore case
set ignorecase

" Auto complete the vim commands
set wildmenu

" Set color scheme
set background=dark
colorscheme molokai

" The settings to help you focus
" No cursor blinking
set gcr=a:block-blinkon0
" Disable scroll bars
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" No menu and toolbars
set guioptions-=m
set guioptions-=T
" Always show the status bar
set laststatus=2
" Show the position of the cursor
set ruler
" Show line number
set number
" Hightlight the row and column
set cursorline
set cursorcolumn
" Hightlight the search result
set hlsearch

" Font
set guifont=Hack\ Regular\ 14

" No wrap
set nowrap

" Hightlight syntax
syntax enable
syntax on
filetype indent on

" The spaces for a tab
set shiftwidth=8

" Save the undo history
set undodir=~/.undo_history/
set undofile

" 80 column mark
let &colorcolumn=join(range(81,999),",")


"------------------------------------------------------------------
" Configurations of the Plugins
" git plugin
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gb :Gblame<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>gr :Gread<CR>
nnoremap <Leader>gw :Gwrite<CR>
nnoremap <Leader>gc :Gcommit<CR>

" ctrlsf plugin
" Search in the whole project
nnoremap <Leader>sp :CtrlSF<CR>
" Open the last search result
nnoremap <Leader>so :CtrlSFOpen<CR>

" MiniBufExplorer
" Show/hide the windows
map <Leader>mbl :MBEToggle<cr>

" NERDTree
" Open the tree
nmap <Leader>fl :NERDTreeToggle<CR>
" Set the window width, position
let NERDTreeWinSize=22
let NERDTreeWinPos="right"
" Show hidden file
let NERDTreeShowHidden=1
" Show minimal UI
let NERDTreeMinimalUI=1
" Delete buffer when the file is deleted
let NERDTreeAutoDeleteBuffer=1

" Tagbar
" TODO
let tagbar_left=1
nnoremap <Leader>tl :TagbarToggle<CR>
let tagbar_width=32
let g:tagbar_compact=1

" Airline
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#fnamemod = ':t'

" Buffer switch
nmap <c-l> :bnext<cr>
nmap <c-k> :bprevious<cr>

" ctrlp settings
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
