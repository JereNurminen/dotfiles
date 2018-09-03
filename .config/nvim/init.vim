" Plugins
call plug#begin('~/.local/share/nvim/plugged')
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'scrooloose/nerdtree'
Plug 'Xuyuanp/nerdtree-git-plugin'
Plug 'mattn/emmet-vim'
Plug 'terryma/vim-multiple-cursors'
Plug 'airblade/vim-gitgutter'
Plug 'Valloric/YouCompleteMe'
Plug 'tpope/vim-surround' 
Plug 'kien/ctrlp.vim'
Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'w0rp/ale'
Plug 'w0ng/vim-hybrid'
Plug 'chriskempson/base16-vim'
Plug 'Yggdroot/indentLine'
Plug 'Quramy/tsuquyomi'
Plug 'leafgarland/typescript-vim'
call plug#end()

" Colors
set termguicolors
set background=dark
syntax on
colo base16-monokai

set number
map <C-b> :NERDTreeToggle<CR>

" "autocmd BufEnter * lcd %:p:h
set tabstop=8 softtabstop=0 expandtab shiftwidth=2 smarttab
set mouse=a
set scrolloff=10
set relativenumber
set nopaste

" ALE
let g:ale_linters = {'javascript': ['eslint'], 'jsx': ['eslint']}
let g:ale_sign_error = 'XX'
let g:ale_sign_warning = '!!'
let g:ale_sign_column_always = 1

" Airline
:let g:airline#extensions#tabline#buffer_nr_show = 1
let g:airline#extensions#tabline#formatter = 'default'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#ale#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme = 'base16'

" Indent Line
let g:indentLine_char = '⎸'
let g:indentLine_enabled = 1


" Keymaps
imap § <Esc> " Because the touchbar <Esc> is shitty
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>
nnoremap ¨ ^

" Splits
set splitbelow
set splitright

" Buffers
set hidden
:nnoremap <Tab> :bnext<CR>
:nnoremap <S-Tab> :bprevious<CR>

set suffixesadd=.js,.jsx,.ts,.tsx,.css,.less
