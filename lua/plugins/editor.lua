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
                "<leader>bp",
                "<cmd>BufferLinePick<cr>",
                desc = "Pick opened buffer",
            },
            {
                "<leader>br",
                "<cmd>BufferLinePickClose<cr>",
                desc = "Close opened buffer",
            },
        },
    },
    {
        "goolord/alpha-nvim",
        keys = {
            {
                "<leader>ug",
                "<cmd>Alpha<cr>",
                desc = "Open greeter",
            },
        },
    },
}
