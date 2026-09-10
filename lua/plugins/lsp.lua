return {

    vim.lsp.config('lua_ls', {
        cmd = { '/bin/lua-language-server' },
        filetypes = { 'lua' },
        root_markers = { '.git', '' },
    }),

    vim.lsp.config('rust-analyzer', {
        cmd = { '/bin/rust-analyzer' },
        filetypes = { 'rust' },
        root_markers = { 'Cargo.toml', '.git'},

    }),

    vim.lsp.enable( 'lua_ls', 'rust-analyzer' ),

}

