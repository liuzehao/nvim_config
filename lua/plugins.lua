local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use {
  "folke/which-key.nvim",
  config = function()
    vim.o.timeout = true
    vim.o.timeoutlen = 300
    require("which-key").setup {
      -- your configuration comes here
      -- or leave it empty to use the default settings
      -- refer to the configuration section below
    }
  end
}
   use 'folke/tokyonight.nvim'
   use({ "kyazdani42/nvim-tree.lua", requires = "kyazdani42/nvim-web-devicons" })
   -- use 'RRethy/nvim-base16'
   use 'wbthomason/packer.nvim'
   use { 'nvim-telescope/telescope.nvim', requires = { "nvim-lua/plenary.nvim" } }  -- 你的插件列表...
end)
