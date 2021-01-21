" NUMEROS DE LINEA
set number relativenumber
set cursorline
set tabstop=4
set shiftwidth=4
set expandtab
set scrolloff=10
set splitbelow
set splitright
set noswapfile
set noshowmode

" => CURSOR
set cursorcolumn
set colorcolumn=120
highlight ColorColumn ctermbg=0 guibg=#1a1a1a
highlight CursorLine ctermbg=0 guibg=#363636
highlight CursorColumn ctermbg=0 guibg=#363636

filetype on
filetype plugin on

" => VIM-PLUG
if empty(glob('~/.local/share/nvim/site/autoload/plug.vim'))
  silent !curl -fLo ~/.local/share/nvim/site/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PluginInstall --sync | source ~/.config/nvim/init.vim
endif

call plug#begin('~/.vim/plugged')

" => PLUGINS
Plug 'mhinz/vim-startify'
Plug 'itchyny/lightline.vim'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-fugitive'
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
Plug 'ryanoasis/vim-devicons'
Plug 'vimlab/split-term.vim'
Plug 'preservim/nerdtree'
Plug 'bagrat/vim-buffet'
Plug 'vim-python/python-syntax'
Plug 'airblade/vim-rooter'

" => THEMES
Plug 'arcticicestudio/nord-vim'
Plug 'nanotech/jellybeans.vim'
Plug 'tomasr/molokai'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'junegunn/seoul256.vim'

call plug#end()

" => LIGHTLINE
let g:lightline = {
    \ 'colorscheme': 'molokai',
    \ 'enable': {
    \   'tabline': 0
    \}
    \}

" => SINTAXIS Y COLOR
let g:python_highlight_all = 1

if (has("termguicolors"))
    set termguicolors
endif

let g:seoul256_background = 233
colorscheme seoul256 

" => LEADER KEY
let mapleader = " "

" => FZF
let g:fzf_layout = {'down': '40%'}

map <C-p> :Files<CR>
map <C-f> :BLines<CR>

" => TERMINAL
nmap <C-t> :15Term<CR>

" => VIM-BUFFET
let g:buffet_always_show_tabline = 0

noremap <C-I>  :bn <CR>
noremap <C-k>u :Bw <CR>
noremap <C-k>w :Bonly<CR>

" => NERDTree
let g:NERDTreeHijackNetrw = 1
au VimEnter NERD_tree_1 enew | execute 'NERDTree '.argv()[0]
nmap <leader>t :NERDTreeToggle<CR>
nmap <leader>f :NERDTreeFind<CR>

" => VIM-ROOTER
let g:rooter_patterns = ['.git']

" => STARTIFY
let g:startify_files_number = 5
let g:startify_lists = [
    \ { 'type': 'files', 'header': ['   MRU']},
    \ { 'type': 'bookmarks', 'header': ['   Bookmarks']}
    \ ]
let g:startify_bookmarks = [
    \ { 'a': '~/Documentos/devs/python/pyloteria' }
    \ ]
nmap <leader>s :Startify<CR>
