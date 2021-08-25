call plug#begin('~\AppData\Local\nvim\plugged')
" Colorschemes..
"Plug 'rktjmp/lush.nvim'
Plug 'gruvbox-community/gruvbox'
"Plug 'nightsense/carbonized'
"Plug 'ray-x/aurora'
Plug 'EdenEast/nightfox.nvim'

Plug 'OmniSharp/omnisharp-vim'

" Fuzzy Finding
Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate', 'branch': '0.5-compat'}

" Nice status bar
Plug 'hoob3rt/lualine.nvim'
Plug 'kyazdani42/nvim-web-devicons' 

call plug#end()

"colorscheme carbonized-dark
"set background=dark
colorscheme nightfox
"colorscheme gruvbox
"colorscheme aurora

set nowrap
set termguicolors

let mapleader=";"

" turn on line numbers - use "hybrid" mode
set number relativenumber

" set indents to be 4 spaces
set tabstop=4           " The width of a TAB is set to 4.
set shiftwidth=4        " Indents will have a width of 4.
set softtabstop=0       " Sets the number of columns for a TAB.
set expandtab           " Expand TABs to spaces
set smarttab

set scrolloff=6

set noswapfile

" ctrl-s to save in normal and insert modes
nnoremap <C-s> :w<CR>
inoremap <C-s> <Esc>:w<CR>

" set key mappings for copy and paste from system clipboard
" https://www.linuxfordevices.com/tutorials/linux/copy-paste-multiple-registers-in-vim
vnoremap <Leader>y "+y
nnoremap <Leader>p "+p

command! BufOnly execute '%bdelete|edit #|normal `"'
