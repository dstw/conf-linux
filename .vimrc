set nocompatible
set nobackup nowritebackup noswapfile autoread
set exrc
set hidden
set modeline
set secure
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8
set wildmenu
set backspace=indent,eol,start
set laststatus=2
set autoindent
set showcmd
set history=50
set textwidth=80
set colorcolumn=+1
syntax on
set hlsearch incsearch ignorecase smartcase
set nomousehide
set mousemodel=popup
set ruler
set number
set nofoldenable
set scrolloff=10
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
filetype plugin indent on

if has("gui_running")
	set t_Co=256
	if has("win32") || has("win16")
		set guifont=Ubuntu\ Mono:h11
	endif
	colorscheme solarized
	set background=dark
	set cursorline
	set printoptions=paper:letter
endif
