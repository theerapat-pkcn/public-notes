syntax on

set noerrorbells
set nowrap
set noshowmode
set listchars=tab:»·,space:.,eol:¬
set list
set nu
set relativenumber
set undodir=~/.vim/undodir
set undofile
set tabstop=2
set shiftwidth=2
set softtabstop=2
set nosmartindent
set expandtab
set mouse=a

set colorcolumn=80
highlight ColorColumn ctermbg=0 guibg=lightgrey

set t_Co=256

" Install plugin by `:PlugInstall` command
" Uninstall plugin by remove plugin inside call plug and run `:PlugClean`
call plug#begin('~/.vim/plugged')
Plug 'gruvbox-community/gruvbox'
Plug 'vim-airline/vim-airline'
Plug 'jiangmiao/auto-pairs'
Plug 'preservim/nerdtree'
call plug#end()

colorscheme gruvbox
let g:gruvbox_contrast_dark = 'hard'
let g:airline_powerline_fonts = 1

set guifont=DejaVu\ Sans:s12

" air-line
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

set splitbelow splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

let mapleader=" "
noremap <Leader>q :qa!<Enter>
noremap <Leader>w :w<Enter>
noremap <Leader>e :wq<Enter>

nnoremap <C-t> :NERDTreeToggle<CR>

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p
"" Exit Vim if NERDTree is the only window remaining in the only tab.
"autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 
"        \ && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif
let NERDTreeShowHidden=1
