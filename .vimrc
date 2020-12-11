set listchars=tab:»·,trail:·
set tabstop=4
set softtabstop=4
set shiftwidth=4
set expandtab
set smarttab
set encoding=utf-8
set termencoding=utf-8
"set fileencoding=utf-8
set fileformats=unix,dos

:command! -range=% -nargs=0 TabToSpace execute '<line1>,<line2>s#^\t\+#\=repeat(" ", len(submatch(0))*' . &ts . ')'
:command! -range=% -nargs=0 SpaceToTab execute '<line1>,<line2>s#^\( \{'.&ts.'\}\)\+#\=repeat("\t", len(submatch(0))/' . &ts . ')'
set incsearch
set ignorecase smartcase

" Remove any trailing whitespace that is in the file
autocmd BufRead,BufWrite * if ! &bin | silent! %s/\s\+$//ge | endif

syntax on
filetype plugin indent on

set mouse=a
set ttymouse=xterm2

" tab navigation and restore
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
set sessionoptions+=tabpages,globals

" more productive
let mapleader = "\<Space>"
nnoremap <Leader>w :w<CR>
nnoremap <Leader>n :set invnumber invrelativenumber<CR>

" reload vimrc
nnoremap <Leader>r :source ~/.vimrc<CR>

map <C-n> :NERDTreeToggle<CR>

" line number highlight
hi clear CursorLine
hi CursorLineNR cterm=bold
set cul

" silver surfer
let g:ackprg = "ag --vimgrep"
nnoremap <Leader>a :Ack<Space>

" Upgraded GO highlighting
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_fields = 1
let g:go_highlight_types = 1
let g:go_highlight_operators = 1
let g:go_highlight_build_constraints = 1
let g:go_def_mapping_enabled = 0

" open NERDTree automatically when vim starts up if no files specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

" rust fmt
let g:rustfmt_autosave = 1
