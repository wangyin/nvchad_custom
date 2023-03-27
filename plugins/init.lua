local overrides = require "custom.plugins.overrides"

return {

  ["goolord/alpha-nvim"] = { disable = false }, -- enables dashboard

  -- Override plugin definition options
  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  -- overrde plugin configs
  ["nvim-treesitter/nvim-treesitter"] = {
    override_options = overrides.treesitter,
  },

  ["williamboman/mason.nvim"] = {
    override_options = overrides.mason,
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = overrides.nvimtree,
  },

  ["folke/which-key.nvim"] = { disable = false },

  -- Install a plugin
  ["max397574/better-escape.nvim"] = {
    event = "InsertEnter",
    config = function()
      require("better_escape").setup()
    end,
  },

  ["phaazon/hop.nvim"] = {
    branch = 'v2', -- optional but strongly recommended
    config = function()
      -- you can configure Hop the way you like here; see :h hop-config
      require'hop'.setup { keys = 'etovxqpdygfblzhckisuran' }
    end,
    setup = function()
      require("core.utils").load_mappings "hop"
    end,
  },

  ["sindrets/diffview.nvim"] = {
    after = "plenary.nvim",
    config = function()
       require("diffview").setup()
    end,
   },

  ["christoomey/vim-tmux-navigator"] = {},

  -- code formatting, linting etc
  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["mfussenegger/nvim-dap"] = {
    config = function()
      require "custom.plugins.dap"
    end,
    setup = function()
      require("core.utils").load_mappings "dap"
    end,
    requires = {
      "Pocco81/DAPInstall.nvim",
      -- "mfussenegger/nvim-dap-python", -- can be used instead of a config file for the Python adapter by requiring it where your config would be.
    },
  },

  ["rcarriga/nvim-dap-ui"] = {
    after = "nvim-dap",
    config = function()
      require "custom.plugins.dap_ui"
    end,
    setup = function()
      require("core.utils").load_mappings "dapui"
    end,
    requires = {
      "mfussenegger/nvim-dap"
    }
  },

  -- remove plugin
  -- ["hrsh7th/cmp-path"] = false,
}
