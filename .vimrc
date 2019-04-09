colorscheme PaperColor         " Set the default colorscheme.
syntax enable                  " Always turn on syntax highlighting.
set background=light           " Use the dark/light version of the theme.
filetype plugin indent on      " Auto indenting
set laststatus=2               " Always show the status line.
set expandtab                  " Change tabs into spaces.
set tabstop=2                  " Make tabs two spaces wide.
set softtabstop=2              " Tab size when inserting/pasting.
set shiftwidth=2               " Number of spaces to use for autoindenting.
set shiftround                 " Use multiple of shiftwidth when indenting with < and >.
set smarttab                   " Insert tabs on the start of a line according to shiftwidth.
set autoindent                 " Always have autoindenting on.
set copyindent                 " Copy the previous indentation on autoindenting.
set number                     " Turn on line numbers.
set ruler                      " Show what line/column the cursor is on.
set cursorline                 " Color the line that the cursor is on.
set colorcolumn=80             " Add a colored column to help control line length.
set autoread                   " If a file is changed outside of vim, reload it.
set scrolloff=10               " Always show n lines of context by padding top/bottom.
set hidden                     " Hide buffers instead of closing them.
set clipboard=unnamed          " Use system clipboard.
set backspace=indent,eol,start " Make backspace work like most editors.

" Longer command and undo history.
set history=100
set undolevels=100

" Folding settings
set nofoldenable " Prevent files from being opened with folds closed.
set foldnestmax=10
set foldlevel=1

" Search settings
set incsearch  " Show matches as you type.
set ignorecase " Case insensitive search.
set smartcase  " If an uppercase is included in search, make it case-sensitive.
set nohlsearch " Prevent highlighting search results.

" Auto commands
" remove trailing spaces from source code
autocmd FileType c,cpp,java,php,javascript,typescript,html,css autocmd BufWritePre <buffer> %s/\s\+$//e
autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en
autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en
autocmd FileType gitcommit setlocal spell spelllang=en
autocmd BufRead,BufNewFile *.md setlocal textwidth=80
autocmd BufRead,BufNewFile *.txt setlocal textwidth=80
autocmd FileType gitcommit setlocal textwidth=72

" Key remappings
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <tab><tab> <c-w>w
" Toggle paste mode.
nmap <leader>o :set paste!<cr>
" Remove trailing white space.
nnoremap <leader>W :%s/\s\+$//<cr>:let @/=''<cr>

" JSDoc highlighting
let g:javascript_plugin_jsdoc = 1

" GitGutter
let g:gitgutter_terminal_reports_focus=0

" Airline/Powerline fonts
let g:airline_powerline_fonts = 1

if !exists('g:airline_symbols')
    let g:airline_symbols = {}
endif

" unicode symbols
let g:airline_left_sep = '»'
let g:airline_left_sep = '▶'
let g:airline_right_sep = '«'
let g:airline_right_sep = '◀'
let g:airline_symbols.linenr = '␊'
let g:airline_symbols.linenr = '␤'
let g:airline_symbols.linenr = '¶'
let g:airline_symbols.branch = '⎇'
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.paste = 'Þ'
let g:airline_symbols.paste = '∥'
let g:airline_symbols.whitespace = 'Ξ'

" airline symbols
let g:airline_left_sep = ''
let g:airline_left_alt_sep = ''
let g:airline_right_sep = ''
let g:airline_right_alt_sep = ''
let g:airline_symbols.branch = ''
let g:airline_symbols.readonly = ''
let g:airline_symbols.linenr = ''

" fzf (installed with git at ~/.fzf)
set rtp+=~/.fzf

" Pathogen
execute pathogen#infect()
