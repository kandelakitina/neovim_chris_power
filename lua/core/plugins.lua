-- Bootstrapping Packer (self install if not installed)
local ensure_packer = function()
  local fn = vim.fn
  local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
  if fn.empty(fn.glob(install_path)) > 0 then
    fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
    vim.cmd [[packadd packer.nvim]]
    return true
  end
  return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)

  -- Package managers
  use 'wbthomason/packer.nvim'
  use 'williamboman/mason.nvim'

  -- Usability
  use 'nvim-tree/nvim-tree.lua'
  use 'nvim-lualine/lualine.nvim'
  use 'lewis6991/gitsigns.nvim'
  use 'tpope/vim-unimpaired'
  use 'kylechui/nvim-surround'
  use 'fedepujol/move.nvim'
  use { 'phaazon/hop.nvim', branch = 'v2' }
  use 'NvChad/nvim-colorizer.lua'  
  
  -- Highlights range, entered into command line
  use {
    'winston0410/range-highlight.nvim',
    requires = 'winston0410/cmd-parser.nvim',
    config = function()
      require('range-highlight').setup()
    end
  }

  -- Registers menu
  use 'tversteeg/registers.nvim'

  -- Comment
  use {
    'numToStr/Comment.nvim',
    config = function()
        require('Comment').setup()
    end
  }
  
  -- Web server
  use { 
    'turbio/bracey.vim', 
    run = 'npm install --prefix server' 
  }
  
  -- Autopairs
  use {
    'windwp/nvim-autopairs',
      config = function() require("nvim-autopairs").setup {} end
  }
  use { 'windwp/nvim-ts-autotag', after = 'nvim-treesitter' }

  -- Visuals
  use 'ellisonleao/gruvbox.nvim'
  use 'nvim-tree/nvim-web-devicons'
  use {
    'akinsho/bufferline.nvim', 
    tag = "v3.*", 
    requires = 'nvim-tree/nvim-web-devicons',
    config = function()
      require('bufferline').setup()
    end
  }

  -- LSP and grammar
  use 'williamboman/mason-lspconfig.nvim'
  use 'neovim/nvim-lspconfig'
  use {
    'j-hui/fidget.nvim',
    config = function()
      require('fidget').setup()
    end
  }

  -- Formatting and linting
  use 'jose-elias-alvarez/null-ls.nvim'
  use 'jayp0521/mason-null-ls.nvim'
  use 'nvim-treesitter/nvim-treesitter'

  -- Completion
  use 'hrsh7th/nvim-cmp'
  use 'hrsh7th/cmp-nvim-lsp'
  use 'L3MON4D3/LuaSnip'
  use 'saadparwaiz1/cmp_luasnip'
  use 'rafamadriz/friendly-snippets'

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use { 
    'nvim-telescope/telescope-fzf-native.nvim', 
    run = "make" 
  }

  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)

