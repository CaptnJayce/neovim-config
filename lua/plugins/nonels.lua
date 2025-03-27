return {
  "nvimtools/none-ls.nvim",
  dependencies = {
    "nvimtools/none-ls-extras.nvim",
  },
  config = function()
    local null_ls = require("null-ls")

    null_ls.setup({
      sources = {
        -- lua
        null_ls.builtins.formatting.stylua,

        -- C++
        null_ls.builtins.formatting.clang_format,
        require("none-ls.diagnostics.cpplint"),

        -- Python
        require("none-ls.diagnostics.ruff"),
        null_ls.builtins.formatting.black,
      },
    })
  end,
}
