return {
    {
        "williamboman/mason.nvim",
        opts = function(_, opts)
            -- The warnings don't mean much, as the function allows defaults
            vim.list_extend(opts.ensure_installed, { "pyright" })
        end,
    },
    {
        "linux-cultist/venv-selector.nvim",
        dependencies = { "neovim/nvim-lspconfig", "nvim-telescope/telescope.nvim" },
        config = true,
        -- This can be used to access the VenvSelect command, without a keybinding, however I currently need not do that
        -- event = "VeryLazy",
        keys = {
            {
                "<leader>cv",
                "<cmd>:VenvSelect<cr>",
                desc = "Select venv",
            },
        },
    },
}
