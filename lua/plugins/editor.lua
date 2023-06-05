<<<<<<< HEAD
return {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    event = "VeryLazy",
    config = true,
    keys = {
        { "<leader>d", "<cmd>Neogen<cr>", desc = "Annotate highlighted code" },
=======
local Util = require("lazyvim.util")

return {
    {
        "danymat/neogen",
        dependencies = "nvim-treesitter/nvim-treesitter",
        event = "VeryLazy",
        config = true,
        keys = {
            { "<leader>d", "<cmd>Neogen<cr>", desc = "Annotate highlighted code" },
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
                "<cmd>BufferLineClose<cr>",
                desc = "Close opened buffer",
            },
        },
    },
    {
        "nvim-neo-tree/neo-tree.nvim",
        opts = {
            default_component_configs = {
                icon = {
                    folder_empty = "󰜌",
                    folder_empty_open = "󰜌",
                },
                git_status = {
                    symbols = {
                        renamed = "󰁕",
                        unstaged = "󰄱",
                    },
                },
            },
            document_symbols = {
                kinds = {
                    File = { icon = "󰈙", hl = "Tag" },
                    Namespace = { icon = "󰌗", hl = "Include" },
                    Package = { icon = "󰏖", hl = "Label" },
                    Class = { icon = "󰌗", hl = "Include" },
                    Property = { icon = "󰆧", hl = "@property" },
                    Enum = { icon = "󰒻", hl = "@number" },
                    Function = { icon = "󰊕", hl = "Function" },
                    String = { icon = "󰀬", hl = "String" },
                    Number = { icon = "󰎠", hl = "Number" },
                    Array = { icon = "󰅪", hl = "Type" },
                    Object = { icon = "󰅩", hl = "Type" },
                    Key = { icon = "󰌋", hl = "" },
                    Struct = { icon = "󰌗", hl = "Type" },
                    Operator = { icon = "󰆕", hl = "Operator" },
                    TypeParameter = { icon = "󰊄", hl = "Type" },
                    StaticMethod = { icon = "󰠄 ", hl = "Function" },
                },
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
>>>>>>> 34ff364 (Addded support for Python, Typst and others and did other things)
    },
}
