-- lua/plugins/lsp.lua
return {
  "neovim/nvim-lspconfig",
  dependencies = { "williamboman/mason.nvim", "williamboman/mason-lspconfig.nvim" },
  config = function()
    require("mason").setup()
    local mason_lspconfig = require("mason-lspconfig")

    local capabilities = require("cmp_nvim_lsp").default_capabilities()

    mason_lspconfig.setup({
      ensure_installed = { "clangd", "lua_ls" },
      automatic_installation = true,
      handlers = {
        function(server_name)
          local server_config = {
          capabilities = capabilities
      }

          if server_name == "clangd" then
            server_config.cmd = { 
                "clangd",
                "--background-index",
                "--clang-tidy",
                "--query-driver=/usr/bin/g++,/usr/bin/gcc,/usr/bin/clang++,/usr/bin/clang",

        }
    end 

    if server_name == "lua_ls" then
        server_config.settings = {
            Lua = {
                diagnostics = {
                    globals = { "vim" },
                },
            },
        }
    end

    require("lspconfig")[server_name].setup(server_config)
end,
},
})
  end,
}

