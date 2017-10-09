"
" MAIN CUSTOMIZATION FILE
"

"""""""""""""""
"vundle
set nocompatible              " be iMproved, required
filetype off                  " required
"
"" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
Plugin 'L9'
" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}



"markdown
"https://github.com/plasticboy/vim-markdown/
Plugin 'godlygeek/tabular'
Plugin 'plasticboy/vim-markdown'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
filetype plugin on
""
"" Brief help
"" :PluginList       - lists configured plugins
"" :PluginInstall    - installs plugins; append `!` to update or just
"":PluginUpdate
"" :PluginSearch foo - searches for foo; append `!` to refresh local cache
"" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
""
"" see :h vundle for more details or wiki for FAQ
"" Put your non-Plugin stuff after this line
""
"""""""""""""""



" Enable loading filetype and indentation plugins
filetype plugin on
filetype indent on

" Turn syntax highlighting on
syntax on

"
" GLOBAL SETTINGS
"

" Write contents of the file, if it has been modified, on buffer exit
set autowrite

" Allow backspacing over everything
"set backspace=indent,eol,start
"退格键能用
set backspace=indent,eol,start
" Insert mode completion options
set completeopt=menu,longest,preview

" Use UTF-8 as the default buffer encoding
"set enc=gb2312
set enc=utf-8
"编码设置
"set tenc=gb2312
set tenc=utf-8

" Remember up to 100 'colon' commmands and search patterns
set history=100

" Enable incremental search
set incsearch

" Always show status line, even for one window
set laststatus=2

" Jump to matching bracket for 2/10th of a second (works with showmatch)
set matchtime=2

" Don't highlight results of a search
"set nohlsearch
set hlsearch

" Enable CTRL-A/CTRL-X to work on octal and hex numbers, as well as characters
set nrformats=octal,hex,alpha

" Use F10 to toggle 'paste' mode
set pastetoggle=<F10>

" Show line, column number, and relative position within a file in the status line
" “在编辑过程中，在右下角显示光标位置的状态行
set ruler

"相对行号
set relativenumber

" Scroll when cursor gets within 3 characters of top/bottom edge
set scrolloff=3

" Round indent to multiple of 'shiftwidth' for > and < commands
set shiftround

" Use 4 spaces for (auto)indent
set shiftwidth=4

" Show (partial) commands (or size of selection in Visual mode) in the status line
set showcmd

" When a bracket is inserted, briefly jump to a matching one
set showmatch

" Don't request terminal version string (for xterm)
set t_RV=

" Use 4 spaces for <Tab> and :retab
set tabstop=4

" Write swap file to disk after every 50 characters
set updatecount=50

" Remember things between sessions
"
" '20  - remember marks for 20 previous files
" \"50 - save 50 lines for each register
" :20  - remember 20 items in command-line history
" %    - remember the buffer list (if vim started without a file arg)
" n    - set name of viminfo file
set viminfo='20,\"50,:20,%,n~/.viminfo

" Use menu to show command-line completion (in 'full' case)
set wildmenu

" Set command-line completion mode:
"   - on first <Tab>, when more than one match, list all matches and complete
"     the longest common  string
"   - on second <Tab>, complete the next full match and show menu
set wildmode=list:longest,full

" Go back to the position the cursor was on the last time this file was edited
au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")|execute("normal `\"")|endif

" Fix my <Backspace> key (in Mac OS X Terminal)
set t_kb=
fixdel

" Avoid loading MatchParen plugin
let loaded_matchparen = 1

" netRW: Open files in a split window
let g:netrw_browse_split = 1

"
" MAPPINGS
"

" save changes
"map ,s :w<CR>
" exit vim without saving any changes
"map ,q :q!<CR>
" exit vim saving changes
"map ,w :x<CR>
" switch to upper/lower window quickly
"map <C-J> <C-W>j
"map <C-K> <C-W>k
" use CTRL-F for omni completion
"imap <C-F> 
" map CTRL-L to piece-wise copying of the line above the current one
"imap <C-L> @@@<ESC>hhkywjl?@@@<CR>P/@@@<CR>3s
" map ,f to display all lines with keyword under cursor and ask which one to
" jump to
"nmap ,f [I:let nr = input("Which one: ")<Bar>exe "normal " . nr ."[\t"<CR>
" use <F6> to toggle line numbers
imap <C-[> <ESC>
nmap <silent> <F6> :set number!<CR>
" page down with <Space>
nmap <Space> <PageDown>
" open filename under cursor in a new window (use current file's working
" directory)
nmap gf :new %:p:h/<cfile><CR>
" map <Alt-p> and <Alt-P> to paste below/above and reformat
nnoremap <Esc>P  P'[v']=
nnoremap <Esc>p  p'[v']=
" visual shifting (does not exit Visual mode)
vnoremap < <gv
vnoremap > >gv

" Generic highlight changes
"highlight Comment cterm=none ctermfg=Gray
"highlight IncSearch cterm=none ctermfg=Black ctermbg=DarkYellow
"highlight Search cterm=none ctermfg=Black ctermbg=DarkYellow
"highlight String cterm=none ctermfg=DarkGreen
"highlight treeDir cterm=none ctermfg=Cyan
"highlight treeUp cterm=none ctermfg=DarkYellow
"highlight treeCWD cterm=none ctermfg=DarkYellow
"highlight netrwDir cterm=none ctermfg=Cyan

" Set the <Leader> for combo commands
let mapleader = ","





"语法检查
nmap <silent> <F9> :lcd %:p:h<Bar>! /cygdrive/c/wamp/bin/php/php5.4.12/php.exe -l  % <CR>

"设置注释的颜色
hi Comment ctermfg=6

"tab 切换
map tp :tabp<cr>
map tn :tabn<cr>

"move
nmap <silent> <F11> :-10<CR>
nmap <silent> <F12> :+10<CR>

"insert datetime
nmap <silent> <F5> :r! date +"by Zhp \%F \%T"<CR>

"color scheme
colorscheme desert

"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplMapWindowsNavVim=1
"let g:miniBufExplMapWindowNavArrows=1

"CTRL-N search scope
"detail help:cpt
set cpt=.,w,b


"NERDTree
"NERDTree Settings{
	let NERDTreeWinPos ="left"
	let NERDTreeShowBookmarks=1
	let NERDTreeBookmarksFile=$vim.".NERDTreeBookmarks"
"}
map <F3> :NERDTreeToggle<CR>
nnoremap <F4> :e %:p:s,.h$,.X123X,:s,.cpp$,.h,:s,.X123X$,.cpp,<CR>


"ctags
map tp :tabp<cr>
map tn :tabn<cr>
map ts :tselect<cr>
