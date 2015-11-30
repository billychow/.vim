function! MySys()
	if has("win32")
		return "win32"
	elseif has("unix")
		return "unix"
	else
		return "mac"
	endif
endfunction

source ~/.vim/bundles.vim

" set help language
set helplang=cn 

" encoding dectection
set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1

" enable filetype dectection and ft specific plugin/indent
filetype plugin indent on

" enable syntax hightlight
syntax on

" color theme
colorscheme molokai
"let g:molokai_original = 1
"let g:rehash256 = 1

" highlight current line & column
set cursorline cursorcolumn

" search options
set incsearch  " incremental search
"set highlight  " conflict with highlight current line
set ignorecase " ignore case
set smartcase  " but don't ignore it, when search string contains uppercase letters
set hlsearch   " highlight search result

" editor settings
" when editing a file, always jump to the last cursor position
autocmd BufReadPost *
		\ if ! exists("g:leave_my_cursor_position_alone") |
		\     if line("'\"") > 0 && line ("'\"") <= line("$") |
		\         exe "normal g'\"" |
		\     endif |
		\ endif

set nocompatible               " disable compatible mode
set nofoldenable               " disable folding
set confirm                    " prompt when existing from an unsaved file
set history=1000               " set command history lines
set backspace=indent,eol,start " more powerful backspacing
set noswapfile                 " disable swap file
set autoread                   " read file automatically when it has been changed outside of vim

" display settings
set t_Co=256        " explicitly tell vim that the terminal has 256 colors              "
set mouse=a         " enable mouse in all modes
set report=0        " always show number of lines changed
set nowrap          " no wrap for long lines
set scrolloff=2     " minimal number of screen lines to keep above and below the cursor
set number          " show line number
set showmatch       " show matched bracket
set matchtime=2     " show matched bracket in tenths of a second
set matchpairs+=<:> " extend matched characters
set showcmd         " show command in the last line of screen
set title           " show filename as window title
set laststatus=2    " always show status line

" indentation
set autoindent    " copy indent from current line
set smartindent   " C-like indent style, but more loose than cindent
set tabstop=4     " number of spaces that a <Tab> in the file counts for
set softtabstop=4 " number of spaces that a <Tab> counts for while performing editing operations, like inserting a <Tab> or using <BS>
set shiftwidth=4  " number of spaces to use for each step of (auto)indent. used for 'cidenti', >>, <<, etc
set expandtab     " expand tab to space
"set textwidth=79

"autocmd FileType php setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=120
"autocmd FileType ruby setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
"autocmd FileType coffee,javascript setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79
"autocmd FileType python setlocal tabstop=4 shiftwidth=4 softtabstop=4 textwidth=79
"autocmd FileType html,htmldjango,xhtml,haml setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=0
"autocmd FileType sass,scss,css setlocal tabstop=2 shiftwidth=2 softtabstop=2 textwidth=79

" syntax support
"autocmd Syntax javascript set syntax=jquery   " jQuery syntax support

" html indentation
let g:html_indent_inctags = "html,body,head,tbody"
let g:html_indent_script1 = "inc"
let g:html_indent_style1 = "inc"

" set map leader instead of default "\"
let mapleader = ","
let g:mapleader = ","

" easy-motion
let g:EasyMotion_leader_key = '<Leader>'

" tabbar
let g:Tb_MaxSize = 2 " max height
let g:Tb_TabWrap = 1 " enable tabbar wrap
highlight Tb_Normal guifg=white ctermfg=white
highlight Tb_Changed guifg=green ctermfg=green
highlight Tb_VisibleNormal ctermbg=252 ctermfg=235
highlight Tb_VisibleChanged guifg=green ctermbg=252 ctermfg=white

" Tagbar
let g:tagbar_left=1
let g:tagbar_width=30
let g:tagbar_autofocus = 1
let g:tagbar_sort = 0
let g:tagbar_compact = 1

" Nerd Tree
let NERDChristmasTree=0
let NERDTreeWinSize=30
let NERDTreeChDirMode=2
let NERDTreeIgnore=['\.vim$', '\~$', '\.pyc$', '\.swp$']
let NERDTreeSortOrder=['^__\.py$', '\/$', '*', '\.swp$',  '\~$']
let NERDTreeShowBookmarks=1
let NERDTreeWinPos = "right"

nnoremap <C-S-Tab> :tabprevious<CR>
nnoremap <C-Tab> :tabnext<CR>
nnoremap <C-t> :tabnew<CR>
nnoremap <C-w> :q<CR>
inoremap <C-S-Tab> <Esc>:tabprevious<CR>i
inoremap <C-Tab> <Esc>:tabnext<CR>i
inoremap <C-t> <Esc>:tabnew<CR>
inoremap <C-w> <Esc>:q<CR>

" ZenCoding
let g:user_zen_expandabbr_key='<C-j>'

" vim-airline
let g:airline#extensions#tabline#enabled = 1
"let g:airline_enable_fugitive=1 "obsolete
"let g:airline_enable_syntastic=1
let g:airline_theme='dark'
let g:airline_left_sep=''
let g:airline_right_sep=''

" NeoComplCache
let g:neocomplcache_enable_at_startup=1
let g:neoComplcache_disableautocomplete=1
"let g:neocomplcache_enable_underbar_completion = 1
"let g:neocomplcache_enable_camel_case_completion = 1
let g:neocomplcache_enable_smart_case=1
let g:neocomplcache_min_syntax_length = 3
let g:neocomplcache_lock_buffer_name_pattern = '\*ku\*'
set completeopt-=preview

imap <C-k> <Plug>(neocomplcache_snippets_force_expand)
smap <C-k> <Plug>(neocomplcache_snippets_force_expand)
imap <C-l> <Plug>(neocomplcache_snippets_force_jump)
smap <C-l> <Plug>(neocomplcache_snippets_force_jump)

" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType c setlocal omnifunc=ccomplete#Complete

" SuperTab
"let g:SuperTabDefultCompletionType='context'
let g:SuperTabDefaultCompletionType = '<C-X><C-U>'
let g:SuperTabRetainCompletionType=2

" ctrlp
set wildignore+=.svn,.git,.hg,*/tmp/*,*.so,*.swp,*.zip,*.pyc,.DS_Store  " MacOSX/Linux
let g:ctrlp_custom_ignore = '\.svn$\|\.git$\|\.hg$'

" Keybindings for plugin toggle
nmap <F3> :GundoToggle<cr>
nmap <F4> :IndentGuidesToggle<cr>
nmap <F5> :NERDTreeToggle<cr>
nmap <F6> :TagbarToggle<cr>
nnoremap <leader>a :Ack

" easier navigation between split windows
nnoremap <c-j> <c-w>j
nnoremap <c-k> <c-w>k
nnoremap <c-h> <c-w>h
nnoremap <c-l> <c-w>l

" egg-ache vim
:command W w
:command WQ wq
:command Wq wq
:command Q q
:command Qa qa
:command QA qa

" for macvim
if has("gui_running")
	set go=aAce  " remove toolbar
	set transparency=20
	set guifont=Monaco:h13
	set showtabline=2
	set columns=140
	set lines=40
	noremap <D-M-Left> :tabprevious<cr>
	noremap <D-M-Right> :tabnext<cr>
endif
