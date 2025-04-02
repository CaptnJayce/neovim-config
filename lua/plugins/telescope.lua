return {
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.8",
        dependencies = { "nvim-lua/plenary.nvim" },

        config = function()
            local builtin = require("telescope.builtin")

            vim.keymap.set("n", "<leader>ff", function()
                builtin.find_files({
                    no_ignore = true,
                    hidden = true,
                    cwd = "../",
                })
            end, {})
            vim.keymap.set("n", "<leader>fg", builtin.live_grep, {})

            require("telescope").setup({
                defaults = {
                    file_ignore_patterns = { "build", ".vs", ".git", "node_modules", "venv", "__pycache__" },
                },
            })
        end,
    },

    {
        "nvim-telescope/telescope-ui-select.nvim",
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                },
            })
            require("telescope").load_extension("ui-select")
        end,
    },
}
