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

