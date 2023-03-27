local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "typescript",
    "c",
    "python",
    "bash",
    "markdown",
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- python
    "flake8",
    "black",
    "pyright",
  },
}

-- git support in nvimtree
M.nvimtree = {
  open_on_setup = true,
  
  git = {
    enable = true,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.whichkey = {
  disable = false,
}

return M
