set nocompatible                                          " use vim settings instead of vi
set nobackup nowritebackup noswapfile autoread               " no backup or swap
set exrc                                                 " enable per-directory .vimrc files
set hidden                                                   " don't unload buffer when switching away
set modeline                                             " allow per-file settings via modeline
set secure                                                   " disable unsafe commands in local .vimrc files
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8   " saving and encoding
set wildmenu                                             " completion
set backspace=indent,eol,start                               " allow backspacing over everything in insert mode
set laststatus=2                                           " display status line which contains current mode, file name, file status, ruler, etc.
set tabstop=8                                              " set tabstop
set softtabstop=8                                          " set softtabstop
set autoindent                                               " always set autoindenting on
set showcmd                                                  " display incomplete commands
set history=50                                              " keep 50 lines of command line history
filetype plugin indent on                                 " enable file type detection
set textwidth=80                                           " show a vertical line at the 79th character
set colorcolumn=+1                                         " highlight column after 'textwidth'
syntax on set title                                         " switch syntax highlighting on
set hlsearch incsearch ignorecase smartcase                  " switch highlighting on the last used search pattern
set mouse=a                                                    " enable mouse for all  modes settings
set nomousehide                                              " don't hide the mouse cursor while typing
set mousemodel=popup                                       " right-click pops up contect menu
set ruler                                                    " show cursor position in status bar
set number                                                    " show line numbers on left
set nofoldenable                                         " disable code folding
set scrolloff=10                                           " scroll the window so we can always see 10 lines around the cursor
set shiftwidth=8
set noexpandtab

"set clipboard=unnamedplus                                 " use the system clipboard for yank/put/delete
if has("gui_running")                                        " check if running gvim
  set t_Co=256                                             " set terminal color to 256
  if has("win32") || has("win16")                         " check if using Windows
    set guifont=Ubuntu\ Mono:h11                          " set Ubuntu Mono font with size 11
  endif
  colorscheme solarized                                      " use solarized colorscheme
  set background=dark                                     " set the background to dark color
  set cursorline                                         " highlight the current line
  set printoptions=paper:letter                               " use letter as the print output format
endif
