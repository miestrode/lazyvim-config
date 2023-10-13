return {
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true,
        keys = {
            { "<leader>cg", "<cmd>Neogen<cr>", desc = "Annotate highlighted code" },
        },
    },
    {
        "akinsho/bufferline.nvim",
        opts = {
            options = { diagnostics = "nvim_lsp", indicator = { style = "underline" } },
        },
        keys = {
            {
                "<leader>bo",
                "<cmd>BufferLinePick<cr>",
                desc = "Open buffer from bufferline",
            },
            {
                "<leader>bc",
                "<cmd>BufferLinePickClose<cr>",
                desc = "Close buffer from bufferline",
            },
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            filesystem = {
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
            },
        },
    },
}
