return {
    -- Add shortcuts to the tab bar for opening and closing files, and add an LSP error preview to each tab.
    {
        "akinsho/bufferline.nvim",
        opts = {
            options = { diagnostics = "nvim_lsp", indicator = { style = "underline" } },
        },
        keys = {
            {
                "<leader>bo",
                "<cmd>BufferLinePick<cr>",
                desc = "Open buffer",
            },
            {
                "<leader>bc",
                "<cmd>BufferLinePickClose<cr>",
                desc = "Close buffer",
            },
        },
    },
    -- Change some visibility settings in Neo-tree
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            filesystem = {
                bind_to_cwd = true,
                filtered_items = {
                    visible = true,
                    hide_dotfiles = false,
                    hide_gitignored = true,
                },
            },
        },
    },
    -- Instead of using LazyGit, use NeoGit, which is a Git integration provider for Neovim.
    {
        "NeogitOrg/neogit",
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope.nvim",
            "sindrets/diffview.nvim",
            "ibhagwan/fzf-lua",
        },
        config = true,
        keys = {
            {
                "<leader>gG",
                function()
                    require("neogit").open()
                end,
                desc = "NeoGit (cwd)",
            },
            {
                "<leader>gg",
                function()
                    require("neogit").open({ cwd = require("lazyvim.util").root() })
                end,
                desc = "NeoGit (root dir)",
            },
        },
    },
    { "Exafunction/codeium.nvim", opts = {
        enable_chat = true,
    } },
    { import = "lazyvim.plugins.extras.coding.codeium" },
    { import = "lazyvim.plugins.extras.editor.trouble-v3" },
    { import = "lazyvim.plugins.extras.ui.mini-animate" },
    { import = "lazyvim.plugins.extras.coding.mini-surround" },
}
