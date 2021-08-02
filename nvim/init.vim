call plug#begin('~\AppData\Local\nvim\plugged')

" Colorschemes..
"Plug 'rktjmp/lush.nvim'
"Plug 'npxbr/gruvbox.nvim'
"Plug 'morhetz/gruvbox'
"Plug 'gruvbox-community/gruvbox'
Plug 'nightsense/carbonized'
"Plug 'ray-x/aurora'

"Plug 'cloudhead/neovim-fuzzy'
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

colorscheme carbonized-dark
"set background=dark
"colorscheme gruvbox
"colorscheme aurora

set nowrap
set termguicolors

let mapleader=";"

" turn on line numbers
set number

" set indents to be 4 spaces
set tabstop=4           " The width of a TAB is set to 4.
set shiftwidth=4        " Indents will have a width of 4.
set softtabstop=0       " Sets the number of columns for a TAB.
set expandtab           " Expand TABs to spaces
set smarttab

set scrolloff=6
