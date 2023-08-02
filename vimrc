set number

" turn on syntax highlight
syntax on

" ture on auto check file type
filetype on

let g:molokai_original = 1
colorscheme molokai

let g:ale_python_pylint_options = '--load-plugins pylint_django'

let g:lightline = {
  \     'active': {
  \         'left': [['mode', 'paste'], ['gitbranch', 'readonly', 'filename', 'modified'], ['absolutepath']],
  \         'right': [['lineinfo'], ['percent'], ['fileformat', 'fileencoding']]
  \     }
  \ }

highlight Normal ctermfg=grey ctermbg=None

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
" nnoremap <C-f> :NERDTreeFind<CR>

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l


" inoremap kj <Esc>

"highlight OverLength ctermbg=red ctermfg=white guibg=#592929
"match OverLength /\%81v.\+/
"highlight OverLength ctermbg=darkred ctermfg=white guibg=#FFD9D9
"match OverLength /\%>80v.\+/
highlight ColorColumn ctermbg=black
set colorcolumn=80

" Set shift width to 4 spaces.
set shiftwidth=4

" Set tab width to 4 columns.
set tabstop=4

" Use space characters instead of tabs.
set expandtab

" Do not save backup files.
set nobackup

" Do not let cursor scroll below or above N number of lines when scrolling.
set scrolloff=10

" Do not wrap lines. Allow long lines to extend as far as the line goes.
set nowrap

" While searching though a file incrementally highlight matching characters as you type.
set incsearch

" Ignore capital letters during search.
set ignorecase

" Override the ignorecase option if searching for capital letters.
" This will allow you to search specifically for capital letters.
set smartcase

" Show partial command you type in the last line of the screen.
set showcmd

" Show the mode you are on the last line.
set showmode

" Show matching words during a search.
set showmatch

" Use highlighting when doing a search.
set hlsearch

" Set the commands to save in history default number is 20.
set history=1000

set laststatus=2

call plug#begin()

" nerd tree 目录树
"Plug 'https://github.com/preservim/nerdtree.git'
Plug 'preservim/NERDTree'

" Fuzzy file finder Ctrl + p
" :CtrlPClearAllCaches 新增或删除文件需要清空缓存
" Plug 'ctrlp.vim'
Plug 'https://github.com/kien/ctrlp.vim.git'

" improve ctrlp search speed
" Plug 'ctrlp-py-matcher'
" Plug 'https://github.com/FelikZ/ctrlp-py-matcher.git'

" autocomplete
" Plug 'https://github.com/ycm-core/YouCompleteMe.git'
Plug 'https://github.com/Shougo/neocomplete.vim.git'

" 快速注释代码
"Plug 'vim-commentary'
Plug 'https://github.com/tpope/vim-commentary.git'

" di(delete in) ci(change in) 删除括号内内容
"Plug 'vim-surround'
Plug 'https://github.com/tpope/vim-surround.git'

" git插件 :Gblame :Gbrowse
"Plug 'vim-fugitve'
Plug 'https://github.com/tpope/vim-fugitive.git'

" ale Syntax Check support Async
"Plug 'ale'
Plug 'https://github.com/dense-analysis/ale.git'

" 注释插件
Plug 'https://github.com/preservim/nerdcommenter.git'

" Auto pairs
Plug 'https://github.com/jiangmiao/auto-pairs.git'

" Use release branch (recommend)
" Plug 'neoclide/coc.nvim', {'branch': 'release'}

" airline
"Plug 'https://github.com/vim-airline/vim-airline.git'
"Plug 'https://github.com/vim-airline/vim-airline-themes.git'

" lightline
Plug 'itchyny/lightline.vim'

" Use release branch (recommend)
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()
