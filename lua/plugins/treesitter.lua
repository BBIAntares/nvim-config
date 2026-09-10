return {
     "nvim-treesitter/nvim-treesitter",
    build = ':TSUpdate',
    config = function ()
        require( "nvim-treesitter" ).setup({
            install_dir = vim.fn.stdpath('data') .. '/site'
        })
    end,
}
