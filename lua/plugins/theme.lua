return {
	"akinsho/horizon.nvim",
	name = "horizon",

	config = function()
		require("horizon").setup({
			opts = {
				transparent = true,
				styles = {
					sidebars = "transparent",
					float = "transparent",
				},
			},
		})
		vim.cmd.colorscheme("horizon")

		-- for transparent telescope ui
		vim.api.nvim_set_hl(0, "TelescopeNormal", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePromptTitle", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePromptBorder", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopePreviewTitle", { bg = "none" })
		vim.api.nvim_set_hl(0, "TelescopeResultsTitle", { bg = "none" })
	end,
}
