-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<A-i>", ":FloatermToggle<CR>")
vim.keymap.set("t", "<A-i>", "<C-\\><C-n>:FloatermToggle<CR>")
vim.keymap.set("t", "<A-n>", "norminette<CR>")
vim.keymap.set("t", "<A-g>", "lazygit<CR>")
vim.keymap.set("t", "<C-l>", "ft_lock<CR>")
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>")

--vim.keymap.set("n", "<Leader>er", vim.diagnostic.open_float)

vim.keymap.set("n", "<Leader>x", ":bd<CR>")
vim.keymap.set("n", "<Tab>", ":bnext<CR>")

vim.keymap.set("n", "<Leader>w", ":w!<cr>", { desc = "Save" })
vim.keymap.set("n", "<Leader>q", ":q!<cr>", { desc = "Quit" })

vim.keymap.set("v", "<Leader>(", "<esc>`>a)<esc>`<i(<esc>", { desc = "parenthesis" })
vim.keymap.set("n", "<Leader>r", "0i{<CR><esc>o}<esc>k", { desc = "bracket" })
vim.keymap.set("v", "<Leader>'", ":s/\\%V\\(.*\\)\\%V/\"\\1\"/<CR>", opts)
vim.keymap.set("v", "<Leader>\"", ":s/\\%V\\(.*\\)\\%V/\'\\1\'/<CR>", opts)
vim.keymap.set("v", "<Leader>[", ":s/\\%V\\(.*\\)\\%V/[\\1]/<CR>", opts)
vim.keymap.set("v", "<Leader>{", ":s/\\%V\\(.*\\)\\%V/{\\1}/<CR>", opts)

local map = vim.keymap.set

-- tabs

map("n", "<leader>ft", function() Snacks.terminal(nil, { win = {position = "float"}}) end, { desc = "Floating Terminal" })

map("n", "<leader><tab>l", "<cmd>tablast<cr>", { desc = "Last Tab" })
map("n", "<leader><tab>f", "<cmd>tabfirst<cr>", { desc = "First Tab" })
map("n", "<leader><tab><tab>", "<cmd>tabnew<cr>", { desc = "New Tab" })
map("n", "<leader>tc", "<cmd>tabclose<cr>", { desc = "Close Tab" })
map("n", "<leader><tab>[", "<cmd>tabprevious<cr>", { desc = "Previous Tab" })

map("n", "<space>", "/")
map("n", "<C-space>", "?")
map("n", "<leader>te", ":tabedit ")

map('n', '<leader>gd', ':lua vim.lsp.buf.definition()<CR>')
map('n', '<leader>gv', ':vsplit | lua vim.lsp.buf.definition()<CR>')

-- Mappage pour la recherche globale (sur tout le disque)
map('n', '<leader>a', "<cmd>lua require('fzf-lua').live_grep({ cwd = '/home/c0rvax'})<CR>", {desc = "Grep root"})

--vim.keymap.del("n", "<leader>ww")
--vim.keymap.del("n", "<leader>w-")
--vim.keymap.del("n", "<leader>w|")
--vim.keymap.del("n", "<leader>wd")
vim.keymap.set("n", "<leader>ua", "<cmd>lua vim.g.cmptoggle = not vim.g.cmptoggle<CR>", { desc = "toggle nvim-cmp" })

