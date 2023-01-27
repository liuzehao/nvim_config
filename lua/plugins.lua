local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'RRethy/nvim-base16'
   use 'wbthomason/packer.nvim'
 use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }  -- 你的插件列表...
end)
