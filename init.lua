require("plugins")
require("basic")
vim.cmd('colorscheme base16-gruvbox-dark-soft')
vim.g.mapleader = " "
vim.g.maplocalleader = " "
local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', '<leader>fg', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
local status, nvim_tree = pcall(require, "nvim-tree")
if not status then
    vim.notify("没有找到 nvim-tree")
  return
end
require("nvim-tree").setup({
  sort_by = "case_sensitive",
  view = {
    adaptive_size = true,
    mappings = {
      list = {
        { key = "u", action = "dir_up" },
      },
    },
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})
vim.keymap.set("n", "<Leader>t", ":NvimTreeToggle<CR>", {})
vim.keymap.set("n", "<Leader>s", ":sp<CR>", { desc = "[S]plit window" })
vim.keymap.set("n", "<Leader>v", ":vsp<CR>", { desc = "[V]ertically [S]plit window" })
vim.keymap.set("n", "<Leader>h", "<C-w>h", {})
vim.keymap.set("n", "<Leader>j", "<C-w>j", {})
vim.keymap.set("n", "<Leader>k", "<C-w>k", {})
vim.keymap.set("n", "<Leader>l", "<C-w>l", {})
