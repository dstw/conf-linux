runtime bundle/vim-pathogen/autoload/pathogen.vim
execute pathogen#infect()
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
set scrolloff=5
set tabstop=8
set softtabstop=8
set shiftwidth=8
set noexpandtab
filetype plugin indent on
vnoremap // y/<C-R>"<CR>
map <C-n> <plug>NERDTreeTabsToggle<CR>
colorscheme CandyPaper

" air-line
let g:airline_powerline_fonts = 1
let g:airline_theme = 'murmur'
if !exists('g:airline_symbols')
	let g:airline_symbols = {}
endif
let g:airline_section_z = airline#section#create(['windowswap', '%3p%% ', 'linenr', ':%3v'])

" nerdtree
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

if filereadable(expand("~/.vimrc_background"))
	let base16colorspace=256
	source ~/.vimrc_background
endif

" EasyAlign
" Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
