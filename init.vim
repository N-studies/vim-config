
:set relativenumber
:set autoindent
:set tabstop=2
:set shiftwidth=2
:set smarttab
:set softtabstop=2
:set mouse=a

call plug#begin()
Plug 'http://github.com/tpope/vim-surround' " Surrounding ysw)
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'https://github.com/preservim/nerdtree'
Plug 'https://github.com/tpope/vim-commentary' " For Commenting gcc & gc
Plug 'https://github.com/lifepillar/pgsql.vim' " PSQL Pluging needs :SQLSetType pgsql.vim
Plug 'https://github.com/ap/vim-css-color' " CSS Color Preview
Plug 'https://github.com/rafi/awesome-vim-colorschemes' " Retro Scheme
Plug 'https://github.com/neoclide/coc.nvim'  " Auto Completion
Plug 'https://github.com/ryanoasis/vim-devicons' " Developer Icons
Plug 'https://github.com/tc50cal/vim-terminal' " Vim Terminal
Plug 'https://github.com/terryma/vim-multiple-cursors' " CTRL + N for multiple cursors
Plug 'https://github.com/preservim/tagbar' " Tagbar for code navigation
Plug 'https://github.com/mattn/emmet-vim' " emmet:
Plug 'https://github.com/Raimondi/delimitMate' " Auto close brackets
Plug 'https://github.com/psf/black' " Black python formatter
Plug 'https://github.com/dense-analysis/ale'
Plug 'https://github.com/manzeloth/live-server' " Live server
Plug 'https://github.com/prettier/vim-prettier' " Prettier
call plug#end()

nnoremap <C-f> :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nmap <F8> :TagbarToggle<CR>

let g:NERDTreeDirArrowExpandable="+"
let g:NERDTreeDirArrowCollapsible="~"

let g:user_emmet_leader_key=","
:colorscheme jellybeans
"""""""" Ale
let g:ale_linters = {'python': ['flake8']}
let g:ale_fixers = {
\	'python': ['black'], 
\	'javascript': ['prettier'],
\	'css': ['prettier'],
\	'html': ['prettier']
\}
let g:ale_fix_on_save = 1

