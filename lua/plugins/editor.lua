return {
    -- Add Neogen, a documentation ("annotation") generator for code.
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        config = true,
        keys = {
            { "<leader>cg", "<cmd>Neogen<cr>", desc = "Annotate highlighted code" },
        },
    },
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
                desc = "Open buffer from bufferline",
            },
            {
                "<leader>bc",
                "<cmd>BufferLinePickClose<cr>",
                desc = "Close buffer from bufferline",
            },
        },
    },
    -- Change some visibility settings in Neo-tree
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
            g = {
                G = {
                    function()
                        require("neogit").open()
                    end,
                    "NeoGit (cwd)",
                },
                g = {
                    function()
                        require("neogit").open({ cwd = require("lazyvim.util").root() })
                    end,
                    "NeoGit (root dir)",
                },
            },
        },
    },
}
