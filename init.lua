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
