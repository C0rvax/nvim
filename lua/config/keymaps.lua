-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<A-i>", ":FloatermToggle<CR>")
vim.keymap.set("t", "<A-i>", "<C-\\><C-n>:FloatermToggle<CR>")
vim.keymap.set("t", "<A-n>", "norminette<CR>")
vim.keymap.set("t", "<A-g>", "lazygit<CR>")
vim.keymap.set("t", "<C-l>", "ft_lock<CR>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

vim.keymap.set("n", "<Leader>er", vim.diagnostic.open_float)

vim.keymap.set("n", "<Leader>x", ":bd<CR>")
vim.keymap.set("n", "<Tab>", ":bnext<CR>")
--vim.keymap.set("i", "<TAB>", ">>")

vim.keymap.set("n", "<Leader>w", ":w!<cr>", { desc = "Save" })
vim.keymap.set("n", "<Leader>q", ":q!<cr>", { desc = "Quit" })

local map = vim.keymap.set

-- tabs

map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

map("n", "<space>", "/")
map("n", "<C-space>", "?")
map("n", "<leader>te", ":tabedit ")


vim.keymap.del("n", "<leader>ww")
vim.keymap.del("n", "<leader>w-")
vim.keymap.del("n", "<leader>w|")
vim.keymap.del("n", "<leader>wd")

