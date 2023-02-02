-- leader
vim.g.mapleader = " "
vim.g.maplocalleader = " "
-- 分屏
vim.keymap.set("n", "<Leader>s", ":sp<CR>", { desc = "[S]plit window" })
vim.keymap.set("n", "<Leader>v", ":vsp<CR>", { desc = "[V]ertically [S]plit window" })
-- 窗口切换
vim.keymap.set("n", "<Leader>h", "<C-w>h", {})
vim.keymap.set("n", "<Leader>j", "<C-w>j", {})
vim.keymap.set("n", "<Leader>k", "<C-w>k", {})
vim.keymap.set("n", "<Leader>l", "<C-w>l", {})
