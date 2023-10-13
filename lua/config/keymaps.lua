-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<leader>gG", function()
    require("neogit").open()
end, { desc = "NeoGit (cwd)" })
vim.keymap.set("n", "<leader>gg", function()
    require("neogit").open({ cwd = require("lazyvim.util").root() })
end, { desc = "NeoGit (root dir)" })
