vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.opt.backspace = "2"
vim.opt.showcmd = true
vim.opt.autowrite = true
vim.opt.cursorline = true
vim.opt.autoread = true

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.shiftround = true
vim.opt.expandtab = true

vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")
vim.keymap.set("n", "<leader>h", ":nohlsearch<CR>")

vim.keymap.set("i", "jh", "<Esc>")
vim.keymap.set("n", "<C-h>", "<C-w>h")
vim.keymap.set("n", "<C-j>", "<C-w>j")
vim.keymap.set("n", "<C-k>", "<C-w>k")
vim.keymap.set("n", "<C-l>", "<C-w>l")

vim.keymap.set("n", "<leader>ee", ":q!<CR>")
vim.keymap.set("n", "<leader>es", ":wq<CR>")
vim.keymap.set("n", "<leader>s", ":w<CR>")

local neogit = require("neogit")

vim.keymap.set("n", "<leader>gs", neogit.open, { silent = true, noremap = true })
vim.keymap.set("n", "<leader>gp", ":Neogit pull<CR>", { silent = true, noremap = true })

vim.keymap.set("n", "<leader>gP", ":Neogit push<CR>", { silent = true, noremap = true })
vim.keymap.set("n", "<leader>gb", ":Telescope git_branches<CR>", { silent = true, noremap = true })
