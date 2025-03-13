-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local map = vim.keymap.set
vim.keymap.set("n", "<leader>pv", vim.cmd.Neotree)

local lazyterm = function()
  LazyVim.terminal(nil, { cwd = LazyVim.root() })
end
vim.keymap.set("n", "<C-/>", lazyterm, { desc = "Open floating terminal (root dir)" })
vim.keymap.set("t", "<C-/>", lazyterm, { desc = "Hide floating terminal" })
vim.keymap.set("t", "<esc><esc>", "<c-\\><c-n>", { desc = "Enter Normal Mode" })
-- windows
vim.keymap.set("n", "<leader>w", "<c-w>", { desc = "Windows", remap = true })
vim.keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split Window Below", remap = true })
vim.keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split Window Right", remap = true })
vim.keymap.set("n", "<leader>wc", "<C-W>c", { desc = "Delete Window", remap = true })
vim.keymap.set("n", "<leader>w<Up>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<leader>w<Down>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<leader>w<Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
vim.keymap.set("n", "<leader>w<Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })
map("n", "<C-h>", "<C-w>h", { desc = "Go to Left Window", remap = true })
map("n", "<C-j>", "<C-w>j", { desc = "Go to Lower Window", remap = true })
map("n", "<C-k>", "<C-w>k", { desc = "Go to Upper Window", remap = true })
map("n", "<C-l>", "<C-w>l", { desc = "Go to Right Window", remap = true })
LazyVim.toggle.map("<c-w>m", Snacks.toggle.maximize)

--tabs
vim.keymap.set("n", "<leader>1", "<cmd>BufferLineGoToBuffer 1<cr>")
vim.keymap.set("n", "<leader>2", "<cmd>BufferLineGoToBuffer 2<cr>")
vim.keymap.set("n", "<leader>3", "<cmd>BufferLineGoToBuffer 3<cr>")
vim.keymap.set("n", "<leader>4", "<cmd>BufferLineGoToBuffer 4<cr>")
vim.keymap.set("n", "<leader>5", "<cmd>BufferLineGoToBuffer 5<cr>")
vim.keymap.set("n", "<leader>6", "<cmd>BufferLineGoToBuffer 6<cr>")
vim.keymap.set("n", "<leader>7", "<cmd>BufferLineGoToBuffer 7<cr>")
vim.keymap.set("n", "<leader>8", "<cmd>BufferLineGoToBuffer 8<cr>")
vim.keymap.set("n", "<leader>9", "<cmd>BufferLineGoToBuffer 9<cr>")

vim.keymap.set("n", "<leader><tab>]", "<cmd>BufferLineCycleNext<cr>")
vim.keymap.set("n", "<leader><tab>[", "<cmd>BufferLineCyclePrev<cr>")
vim.keymap.set("n", "<leader><tab>x", LazyVim.ui.bufremove)
