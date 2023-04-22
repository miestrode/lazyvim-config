return {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    config = true,
    keys = {
        { "<leader>d", "<cmd>Neogen<cr>", desc = "Annotate highlighted code" },
    },
}
