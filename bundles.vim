set nocompatible               " be iMproved
filetype off                   " required!

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle
" required!
Plugin 'Vundle/Vundle.vim'

"------------------
" Code Completions
"------------------
Plugin 'ervandew/supertab'
Plugin 'mattn/emmet-vim'
Plugin 'Shougo/neocomplcache'
Plugin 'Shougo/neosnippet'
" snipmate dependencies
Plugin 'MarcWeber/vim-addon-mw-utils'
Plugin 'tomtom/tlib_vim'
Plugin 'garbas/vim-snipmate'
Plugin 'honza/vim-snippets'

"-----------------
" Fast navigation
"-----------------
Plugin 'edsono/vim-matchit'
Plugin 'Lokaltog/vim-easymotion'

"--------------
" Fast editing
"--------------
Plugin 'tpope/vim-surround'
Plugin 'scrooloose/nerdcommenter'
"Plugin 'Raimondi/delimitMate'
Plugin 'kana/vim-smartinput'
Plugin 'godlygeek/tabular'
"Plugin 'nathanaelkane/vim-indent-guides'

"--------------
" IDE features
"--------------
Plugin 'humiaozuzu/TabBar'
Plugin 'mileszs/ack.vim'
Plugin 'bling/vim-airline'
Plugin 'bling/vim-bufferline'
Plugin 'tpope/vim-fugitive'
Plugin 'Shougo/unite.vim'
Plugin 'kien/ctrlp.vim'
Plugin 'weynhamz/vim-plugin-minibufexpl'
Plugin 'sjl/gundo.vim'
Plugin 'mbbill/undotree'
Plugin 'scrooloose/nerdtree'
Plugin 'jistr/vim-nerdtree-tabs'
Plugin 'majutsushi/tagbar'
Plugin 'airblade/vim-gitgutter'
Plugin 'mhinz/vim-signify'
"Plugin 'tomtom/quickfixsigns_vim'
Plugin 'scrooloose/syntastic'
Plugin 'edkolev/tmuxline.vim'
"Plugin 'gcmt/taboo.vim'
"Plugin 'szw/vim-ctrlspace'

"--------------
"" Color Scheme
"--------------
Plugin 'rickharris/vim-blackboard'
Plugin 'altercation/vim-colors-solarized'
Plugin 'tomasr/molokai'
Plugin 'rickharris/vim-monokai'
Plugin 'tpope/vim-vividchalk'
Plugin 'Lokaltog/vim-distinguished'
Plugin 'chriskempson/vim-tomorrow-theme'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required!
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
