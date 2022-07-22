set nocompatible            " Required"
set number 		              " Show line numbers
set incsearch 		          " Enable incremental search
set hlsearch 		            " Enable highlight search
set termwinsize=12x0        " Snt terminal size
syntax on

set rtp +=~/.vim

call plug#begin('~/.vim/plugged')

Plug 'sheerun/vim-polyglot'
Plug 'preservim/nerdtree', {'on':'NERDTreeToggle'} " File browser
Plug 'preservim/tagbar' " Tag browser
Plug 'LunarWatcher/auto-pairs'
" Plug 'maxboisvert/vim-simple-complete'
Plug 'matze/vim-move'
Plug 'tyru/open-browser.vim' "opens url in browser
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'morhetz/gruvbox'
Plug 'tyrannicaltoucan/vim-deep-space'
Plug 'rakr/vim-one'
Plug 'joshdick/onedark.vim'
Plug 'arcticicestudio/nord-vim'
Plug 'dyng/ctrlsf.vim'
Plug 'Yggdroot/indentLine'
Plug 'vim-scripts/indentpython.vim'
Plug 'Valloric/YouCompleteMe'
Plug 'vim-syntastic/syntastic'
Plug 'nvie/vim-flake8'
Plug 'jistr/vim-nerdtree-tabs'
Plug 'tmhedberg/SimpylFold'

call plug#end()

" Split layout
set splitbelow
set splitright

" Split navigations
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Code Folding
"
" Enable folding
set foldmethod=indent
set foldlevel=99

" Enable folding with the spacebar
nnoremap <space> za

let g:SimpylFold_docstring_preview=1

" NERDTree options
let NERDTreeShowBookmarks = 1   " Show the bookmarks table
let NERDTreeShowHidden = 1      " Show hidden files
let NERDTreeShowLineNumbers = 0 " Hide line numbers
let NERDTreeMinimalMenu = 1     " Use the minimal menu (m)
let NERDTreeWinPos ='left'      " Panel opens on the left side
let NERDTreeWinSize = 31        " Set panel width to 31 columns
let NERDTreeIgnore=['\.pyc$', '\~$'] "ignore files in NERDTree

nmap <F2> :NERDTreeToggle<CR>

let g:tagbar_autofocus=1 " Highlight the active tag
let g:tagbar_autoshowta=1  " Make panel vertical and place on the right
let g:tagbar_position='botright vertical' " Mapping to open and close the panel

nmap <F8> :TagbarToggle<CR>

let g:AutoPairsShortcutToggle = '<C-P>'

set complete-=t
set complete-=i'

let g:airline_powerline_fonts = 1

let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#formatter = 'default'

let g:airline_theme='powerlineish'

set termguicolors
colorscheme gruvbox
set background=dark

let g:airline_theme='one'

let g:ctrlsf_backend = 'ack' " Use the ack tool as the backendA
let g:ctrlsf_auto_close = { "normal":0, "compact":0 } " Auto close the results panel when opening a file
let g:ctrlsf_auto_focus = { "at":"start" } " Immediately switch focus to the search window
let g:ctrlsf_auto_preview = 0 " Don't open the preview window automatically
let g:ctrlsf_case_sensitive = 'smart' " Use the smart case sensitivity search scheme
let g:ctrlsf_default_view = 'normal' " Normal mode, not compact mode
let g:ctrlsf_regex_pattern = 0 " Use absoulte search by default
let g:ctrlsf_position = 'right'  " Use absoulte search by default
let g:ctrlsf_winsize = '46' " Width or height of search window
let g:ctrlsf_default_root = 'cwd' " Search from the current working directory

" (Ctrl+F) Open search prompt (Normal Mode)
nmap <C-F>f <Plug>CtrlSFPrompt 
" (Ctrl-F + f) Open search prompt with selection (Visual Mode)
xmap <C-F>f <Plug>CtrlSFVwordPath
" (Ctrl-F + F) Perform search with selection (Visual Mode)
xmap <C-F>F <Plug>CtrlSFVwordExec
" (Ctrl-F + n) Open search prompt with current word (Normal Mode)
nmap <C-F>n <Plug>CtrlSFCwordPath
" (Ctrl-F + o )Open CtrlSF window (Normal Mode)
nnoremap <C-F>o :CtrlSFOpen<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Normal Mode)
nnoremap <C-F>t :CtrlSFToggle<CR>
" (Ctrl-F + t) Toggle CtrlSF window (Insert Mode)
inoremap <C-F>t <Esc>:CtrlSFToggle<CR>


let g:indentLine_setColors = 0 " Character color
let g:indentLine_char_list = ['|', '¦', '┆', '┊'] " Indent character
let g:indentLine_concealcursor = 'inc'
let g:indentLine_conceallevel = 2
let g:vim_json_conceal=0
let g:markdown_syntax_conceal=0

" Python Indentation 

au BufNewFile,BufRead *.py
    \ set tabstop=4
    \ set softtabstop=4
    \ set shiftwidth=4
    \ set textwidth=79
    \ set expandtab
    \ set autoindent
    \ set fileformat=unix

au BufNewFile,BufRead *.js, *.html, *.css
    \ set tabstop=2
    \ set softtabstop=2
    \ set shiftwidth=2

au BufRead,BufNewFile *.py,*.pyw,*.c,*.h match BadWhitespace /\s\+$/

" UTF--8 Support
set encoding=utf8

" Auto complete options
let g:ycm_autoclose_preview_window_after_completion=1
map <leader>g  :YcmCompleter GoToDefinitionElseDeclaration<CR>

" Syntax checking and highlighting
let python_highlight_all=1
syntax on

" SYstem Clipboard
set clipboard=unnamed

