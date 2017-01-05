" Switch syntax highlighting on, when the terminal has colors
syntax on

" Use Vim instead of Vi api
set nocompatible

" No backup files, write backup and swap file
set nobackup nowritebackup noswapfile

" Autoload files that have changed outside of Vim
set autoread

" A buffer is marked as ‘hidden’ if it has unsaved changes, and it is not currently loaded in a window
" if you try and quit Vim while there are hidden buffers, you will raise an error:
" E162: No write since last change for buffer “a.txt”
set hidden

" Set encoding to UTF
set encoding=utf-8 fileencoding=utf-8 termencoding=utf-8

" Visual autocomplete for command menu (e.g. :e ~/path/to/file)
set wildmenu

" Allow backspace to delete end of line, indent and start of line characters
set backspace=indent,eol,start

" Always show status bar
set laststatus=2

" Show incomplete commands
set showcmd

" Command history
set history=100

" Highlight the current line
set cursorline

" Mouse handler
set nomousehide
set mousemodel=popup

" Maximum line wrap
set textwidth=80

" Show line wrap
set colorcolumn=+1

" Incremental searching (search as you type)
set incsearch

" Highlight search matches
set hlsearch

" Ignore case in search
set smartcase

" Make sure any searches /searchPhrase doesn't need the \c escape character
set ignorecase

" Always show cursor
set ruler

" Set tab size in spaces (this is for manual indenting)
set tabstop=4 softtabstop=4

" The number of spaces inserted for a tab (used for auto indenting)
set shiftwidth=4

" highlight a matching [{()}] when cursor is placed on start/end character
"set showmatch

set exrc
set autoindent

" Turn on line numbers
set number
set modeline
set secure
set nofoldenable
set scrolloff=5
set noexpandtab

" Plugin to autodetect filetype and custom colorscheme and identation
filetype plugin indent on

" Set built-in file system explorer to use layout similar to the NERDTree plugin
let g:netrw_liststyle=3

" Live search on selected text on visual mode
vnoremap // y/<C-R>"<CR>

" Specify syntax highlighting for specific files
" Vim interprets .md as 'modula2' otherwise, see :set filetype?
autocmd Bufread,BufNewFile *.md set filetype=markdown 

" Pathogen Plugin Manager
runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()

" This unsets the "last search pattern" register by hitting return
nnoremap <CR> :nohlsearch<CR><CR>

" Vim's theme
colorscheme CandyPaper
if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif

" Airline (status bar)
let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])
let g:airline#extensions#tabline#enabled = 1

" NERDTree
map <C-n> <plug>NERDTreeTabsToggle<CR>
let NERDTreeShowHidden=1
let g:NERDTreeIndicatorMapCustom = {
    \ "Modified"  : "✹",
    \ "Staged"    : "✚",
    \ "Untracked" : "✭",
    \ "Renamed"   : "➜",
    \ "Unmerged"  : "═",
    \ "Deleted"   : "✖",
    \ "Dirty"     : "✗",
    \ "Clean"     : "✔︎",
    \ "Unknown"   : "?"
    \ }

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)

" Rainbow Parentheses
let g:rbpt_colorpairs = [
    \ ['brown',       'RoyalBlue3'],
    \ ['Darkblue',    'SeaGreen3'],
    \ ['darkgray',    'DarkOrchid3'],
    \ ['darkgreen',   'firebrick3'],
    \ ['darkcyan',    'RoyalBlue3'],
    \ ['darkred',     'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['brown',       'firebrick3'],
    \ ['gray',        'RoyalBlue3'],
    \ ['black',       'SeaGreen3'],
    \ ['darkmagenta', 'DarkOrchid3'],
    \ ['Darkblue',    'firebrick3'],
    \ ['darkgreen',   'RoyalBlue3'],
    \ ['darkcyan',    'SeaGreen3'],
    \ ['darkred',     'DarkOrchid3'],
    \ ['red',         'firebrick3'],
    \ ]

let g:rbpt_max = 16
let g:rbpt_loadcmd_toggle = 0

au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces
