set nocompatible
set helplang=cn " Set default help language

filetype on
filetype plugin on
filetype indent on
set nobackup		" DON'T keep a backup file
set fileformats=unix,dos,mac " support all three, in this order
set autoread " Auto load files when modify
set nowritebackup
set noswapfile
set history=1000	" keep 50 lines of command line history
set ruler			" show the cursor position all the time
"set cursorcolumn " highlight current column
set cursorline " hightlight current line
set showcmd			" display incomplete commands
set cmdheight=2 " command lines number
set laststatus=2 "Always show status line, even for one window
set showtabline=2 "Always show tab line
set autochdir " always switch to the current file directory
"set bsdir=buffer " Set file browser's directory as current directory
"set clipboard+=unnamed " share windows clipboard
set pastetoggle=<F5>
set winaltkeys=no " cancel alt key binding
set backspace=indent,eol,start " allow backspacing over everything in insert mode
set lbr " No breaking words
"set textwidth=0 " Text Width(Default: 0)
set formatoptions+=mB "Open breakwords for Asia Language
set nostartofline " leave my cursor where it was

set encoding=utf-8
"set fenc=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936 " Set File Encoding and detect type with supported format

set hlsearch		" highlight search result
set incsearch		" do incremental searching
set showmatch			" showmatch: Show the matching bracket for the last ')'?
set ignorecase			" ignore case
set smartcase			" but don't ignore it, when search string contains uppercase letters

set number				" line numbers
set tabstop=2
set shiftwidth=2		" 4 characters for indenting
set noexpandtab " Expand tab to spaces
set smarttab " enable indent for file type
set cindent
set autoindent
set smartindent
set mouse=a				" use mouse in xterm to scroll
set lazyredraw " Do not redraw, when running macros... lazyredraw
set scrolloff=5 		" 5 lines bevore and after the current line when scrolling
"set hidden 				" Change buffer - without saving
set wrap " Wrap lines
syntax on
set completeopt=longest,menu " auto completion
set confirm " unsaved buffer warning

set magic " Allows pattern matching with special characters

" By default, pressing <TAB> in command mode will choose the first possible completion with no indication of how many others there might be. The following configuration lets you see what your other options are
set wildmenu
set wildmode=list:longest
set wildignore=.svn,.git

" No sound on errors.
set noerrorbells
set novisualbell
set t_vb=

"Theme
if has("gui_running")
colorscheme desert
  set guifont=Monaco:h10
endif

" Omni Complete Keybindings
imap <C-space> <C-X><C-O>
" Cscope
map <C-g> :cs find g <C-R>=expand("<cword>")<CR>

" Copy and paste mapping
vmap <C-c> "+y
imap <C-v> <Esc>"+pa

" Set mapleader
"let mapleader = ","
" Mappings
"" space /shift-space scroll in normal mode
noremap <S-space> <C-b>
noremap <space> <C-f>
map <F4> <Esc>:tabnew<CR>
map <C-Tab> <Esc>:tabn<CR>
map <C-S-Tab> <Esc>:tabp<CR>
"map <C-Tab> :bn<CR> " Switch to next buffer
"map <S-Tab> :bp<CR> " Switch to previous buffer
map \( i(<Esc>ea)<Esc>
map \{ i{<Esc>ea}<Esc>
map \[ i[<Esc>ea]<Esc>
map \' i'<Esc>ea'<Esc>
map \" i"<Esc>ea"<Esc>

"Smart way to move btw, windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Turns ] into the "match brace" char.
nmap ] %

" Grep - Quick Find
nnoremap <silent> <F3> :Grep<CR>

" imap jj			<Esc>

" NERDTree
map <F10> :NERDTreeToggle<CR>
map <leader>tn :tabnew %<cr>
map <leader>te :tabedit
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove
try
	set switchbuf=usetab
	set stal=2
catch
endtry

" Enable extended % matching, it can also switch among e.g. if/elsif/else/end, between opening and closing XML tags, and more.
runtime macros/matchit.vim

" Plugins
let Grep_Skip_Dirs = 'RCS CVS SCCS .svn .git'
let Grep_Cygwin_Find = 1

" File Type
autocmd BufRead *.php set filetype=php
autocmd BufRead *.phtml set filetype=php

"autocmd FileType php set omnifunc=phpcomplete

" PHP Option
:let php_sql_query = 1
:let php_htmlInStrings = 1
:let php_baselib = 1
":let php_asp_tags = 1
:let php_parent_error_close = 1
:let php_parent_error_open = 1
":let php_folding = 1
"set directionary-=~/.vim/funclist.txt direcitonary+=/.vim/funclist.txt
"set complete-=k complete+=k
"set makeprg=php\ -l\ %
"set errorformat=%m\ in\ %f\ on\ line\ $l

"" minibufexpl
"let g:miniBufExplMapCTabSwitchBufs=1
"let g:miniBufExplMapWindowsNavVim=1
"let g:miniBufExplMapWindowNavArrows=1

" Working Directory Variables
let g:work_base = "D:/WEB/"
let g:public = g:work_base . "public"

function! Cw(dir)
  execute ":cd " . a:dir
endfunction

call Cw(g:work_base)
com! -nargs=1 Chw call  Cw(<args>)


" vimim
"let g:vimim_enable_static_enu=1
"let g:vimim_enable_sexy_input_style=1
"" close chinese sign
"let g:vimim_disable_chinese_punctuation=1
"" no spacing between english and chinese
"let g:vimim_disable_seamless_english_input=1

"""""""""""""""""""""""""""""""""""""""""""""""""""""
" => Check PHP Syntax using makeprg
"""""""""""""""""""""""""""""""""""""""""""""""""""""

"function! PhpCheckSyntax()
    " Check php syntax
"    setlocal makeprg=\"C:\php5\php.exe\"\ -l\ -n\ -d\ html_errors=off

    " Set shellpipe
"    setlocal shellpipe=>

    " Use error format for parsing PHP error output
"    setlocal errorformat=%m\ in\ %f\ on\ line\ %l
"    make %
"endfunction

" Perform :PhpCheckSyntax()
"map <F5> :call PhpCheckSyntax()<CR>
"imap <F5> <ESC>:call PhpCheckSyntax()<CR>
