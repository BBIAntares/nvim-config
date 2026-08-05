return {

    vim.lsp.config('lua_ls', {
        cmd = { '/bin/lua-language-server' },
        filetypes = { 'lua' },
        root_markers = { '.git', '' },
    }),

    vim.lsp.config('clangd', {
        cmd = {
            'clangd', 
            '--background-index',
            '--clang-tidy',
            '--query-driver=/usr/bin/g++,/usr/bin/gcc,/usr/bin/clang++,/usr/bin/clang',
        },
        filetypes = { 'objc', 'objcpp', 'c', 'cpp' },
    }),

    vim.lsp.enable( 'lua_ls', 'clangd' ),

}

