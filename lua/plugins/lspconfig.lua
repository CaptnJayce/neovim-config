return {
  {
  "williamboman/mason.nvim",
  config = function()
    require("mason").setup()
  end
  },

  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = {
          -- Lua
          "lua_ls",

          -- C++
          "clangd",

          -- Python
          "pyright",
          "ruff",

          -- Odin
          "ols",
        },
      })
    end
  },

  {
    "neovim/nvim-lspconfig",
    config = function()
      local capabilities = require('cmp_nvim_lsp').default_capabilities()
      local lspconfig = require("lspconfig")
      lspconfig.lua_ls.setup({
        capabilities = capabilities
      })
      lspconfig.clangd.setup({
        capabilities = capabilities
      })
      lspconfig.ruff.setup({
        capabilities = capabilities
      })
      lspconfig.pyright.setup({
        capabilities = capabilities
      })
      lspconfig.ols.setup({
        capabilies = capabilities
      })
   end
  }
}
