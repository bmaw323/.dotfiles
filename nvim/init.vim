call plug#begin('C:\Users\Brian\AppData\Local\nvim\plugged')

"Plug 'rktjmp/lush.nvim'
"Plug 'npxbr/gruvbox.nvim'
"Plug 'morhetz/gruvbox'
"Plug 'gruvbox-community/gruvbox'
Plug 'nightsense/carbonized'
"Plug 'ray-x/aurora'

"Plug 'cloudhead/neovim-fuzzy'
Plug 'OmniSharp/omnisharp-vim'

Plug 'nvim-lua/popup.nvim'
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim'

Plug 'nvim-treesitter/nvim-treesitter', {'do': 'TSUpdate', 'branch': '0.5-compat'}

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
let g:OmniSharp_highlighting = 0

" turn on line numbers
set number

" set indents to be 4 spaces
set tabstop=4           " The width of a TAB is set to 4.
set shiftwidth=4        " Indents will have a width of 4.
set softtabstop=0       " Sets the number of columns for a TAB.
set expandtab           " Expand TABs to spaces
set smarttab

"nnoremap <C-p> :FuzzyOpen<CR>

augroup omnisharp_commands
    autocmd!

    " Show type information automatically when the cursor stops moving.
    " Note that the type is echoed to the Vim command line, and will overwrite
    " any other messages in this space including e.g. ALE linting messages.
    autocmd CursorHold *.cs OmniSharpTypeLookup

    " The following commands are contextual, based on the cursor position.
    autocmd FileType cs nmap <silent> <buffer> gd <Plug>(omnisharp_go_to_definition)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfu <Plug>(omnisharp_find_usages)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfi <Plug>(omnisharp_find_implementations)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ospd <Plug>(omnisharp_preview_definition)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ospi <Plug>(omnisharp_preview_implementations)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ost <Plug>(omnisharp_type_lookup)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osd <Plug>(omnisharp_documentation)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfs <Plug>(omnisharp_find_symbol)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osfx <Plug>(omnisharp_fix_usings)
    autocmd FileType cs nmap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)
    autocmd FileType cs imap <silent> <buffer> <C-\> <Plug>(omnisharp_signature_help)

    " Navigate up and down by method/property/field
    autocmd FileType cs nmap <silent> <buffer> [[ <Plug>(omnisharp_navigate_up)
    autocmd FileType cs nmap <silent> <buffer> ]] <Plug>(omnisharp_navigate_down)
    " Find all code errors/warnings for the current solution and populate the quickfix window
    autocmd FileType cs nmap <silent> <buffer> <Leader>osgcc <Plug>(omnisharp_global_code_check)
    " Contextual code actions (uses fzf, vim-clap, CtrlP or unite.vim selector when available)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
    autocmd FileType cs xmap <silent> <buffer> <Leader>osca <Plug>(omnisharp_code_actions)
    " Repeat the last code action performed (does not use a selector)
    autocmd FileType cs nmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)
    autocmd FileType cs xmap <silent> <buffer> <Leader>os. <Plug>(omnisharp_code_action_repeat)

    autocmd FileType cs nmap <silent> <buffer> <Leader>os= <Plug>(omnisharp_code_format)

    autocmd FileType cs nmap <silent> <buffer> <Leader>osnm <Plug>(omnisharp_rename)

    autocmd FileType cs nmap <silent> <buffer> <Leader>osre <Plug>(omnisharp_restart_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>osst <Plug>(omnisharp_start_server)
    autocmd FileType cs nmap <silent> <buffer> <Leader>ossp <Plug>(omnisharp_stop_server)
augroup END

" Find files using Telescope command-line sugar
nnoremap <leader>ff :lua require('telescope.builtin').find_files({previewer = false})<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>
nnoremap <leader>fh <cmd>Telescope help_tags<cr>

lua <<EOF
require'nvim-treesitter.configs'.setup{
    ensure_installed = "maintained",    -- one of "all, "maintained" (parsers with maintainers), or a list of languages
    ignore_install = {},                -- List of parsers to ignore installing
    highlight = {
        enable = true,                  -- false will disable whe whole extension
        disable = { "c", "rust" },      -- list of languages that will be disabled
    },
}
EOF
lua <<EOF
require'lualine'.setup {
  options = {
    icons_enabled = true,
    theme = 'gruvbox',
    component_separators = {'', ''},
    section_separators = {'', ''},
    disabled_filetypes = {}
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  extensions = {}
}
EOF
