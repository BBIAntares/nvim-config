return {
     "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function ()
        require( "nvim-treesitter" ).setup({
            install_dir = vim.fn.stdpath("data") .. "/site"
        })

        require( "nvim-treesitter" ).install { "rust", "lua" }
        require( "nvim-treesitter" ).update { "rust", "lua" }

        vim.api.nvim_create_autocmd("FileType", {
            pattern = { "rust", "lua" },
            callback = function() vim.treesitter.start() end,
        })
    end,
}
