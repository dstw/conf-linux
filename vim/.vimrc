" Use Vim instead of Vi api, must be first, it's affect other options
set nocompatible

" Switch syntax highlighting on, when the terminal has colors
syntax on

" No backup files and write backup
set nobackup nowritebackup

" Set custom directory to save swap file
set directory^=$HOME/.vim/tmp//

" Autoload files that have changed outside of Vim
set autoread

" Don't unload buffer when switching away
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

" Get rid of the delay when pressing O (for example)
set timeout timeoutlen=1000 ttimeoutlen=100

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

" Highlight a matching [{()}] when cursor is placed on start/end character
set showmatch

" Enable per-directory .vimrc files
set exrc

" Enable auto indentation
set autoindent

" Turn on line numbers
set number

" Allow per-file settings via modeline
set modeline

" Disable unsafe commands in local .vimrc files
set secure

" Disable code folding
set nofoldenable

" Scroll the window so we can always see 5 lines around the cursor
set scrolloff=5

" Prevent insertion of spaces as replacement for <Tab>, because we need real <Tab>
set noexpandtab

" Plugin to autodetect filetype and custom colorscheme and identation
filetype plugin indent on

" Live search on selected text on visual mode
vnoremap // y/<C-R>"<CR>

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

autocmd VimEnter * RainbowParenthesesToggle
autocmd Syntax * RainbowParenthesesLoadRound
autocmd Syntax * RainbowParenthesesLoadSquare
autocmd Syntax * RainbowParenthesesLoadBraces

" Tagbar - function explorer
nmap tt :TagbarToggle<CR>

" UndoTree
nmap <C-u> :UndotreeToggle<CR>

" Fugitive
nmap <C-g> :Gblame<CR>

" Start GVim with Insert Mode to prevent Vim "panic mode"
if has("gui_running")
	startinsert
	autocmd VimEnter * :NERDTreeClose
endif

" Custom File formats handling
" Set Git commit to wrap on column 72 and enable spelling check
autocmd Filetype gitcommit set spell textwidth=72
" Set Markdown file to enable spelling check and show eol
autocmd Filetype markdown set spell list listchars=tab:>-,eol:¶
autocmd Filetype markdown highlight ExtraWhitespace ctermbg=red guibg=red
autocmd Filetype markdown match ExtraWhitespace /\s\+$/
" Disable Airline and cursor highlighting in ConqueGdb, speed matter
autocmd FileType conque_term :AirlineToggle
autocmd FileType conque_term windo set nocursorline

" Specify syntax highlighting for specific files
" Vim interprets .md as 'modula2' otherwise, see :set filetype?
autocmd Bufread,BufNewFile *.md set filetype=markdown

" Change matching braces color
highlight MatchParen cterm=bold ctermfg=cyan

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)
" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
