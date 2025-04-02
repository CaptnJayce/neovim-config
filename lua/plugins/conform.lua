return {
	"stevearc/conform.nvim",
	config = function()
		require("conform").setup({
			format_on_save = {
				lsp_fallback = true,
				timeout_ms = 500,
			},

			formatters_by_ft = {
				lua = { "stylua" },
				python = { "black" },
			},
		})
	end,
}
