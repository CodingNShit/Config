-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("i", "jj", "<Esc>", { desc = "Exit insert mode" })

vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u", "<C-u>zz")
vim.keymap.set("n", "<C-f>", "<C-f>zz")
vim.keymap.set("n", "<C-b>", "<C-b>zz")

vim.keymap.set("n", "<leader>fa", function()
  require("telescope.builtin").find_files({
    hidden = true,
    no_ignore = true,
  })
end, { desc = "Find Files (all, no ignore)" })

vim.keymap.set("n", "<leader>fp", function()
  require("telescope").extensions.projects.projects({})
end, { desc = "Find Projects" })
