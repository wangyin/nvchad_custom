local M = {}

M.general = {
  n = {
    [";"] = { ":", "command mode", opts = { nowait = true } },
    ["0"] = { "^", "beginning of line" },
  },
  v = {
    ["<"] = { "<gv", "indent left" },
    [">"] = { ">gv", "indent right" },
  },
  x = {
    ["J"] = { ":move '>+1<CR>gv-gv", "move text down" },
    ["K"] = { ":move '<-2<CR>gv-gv", "move text up" },
  }
}

M.nvimtree = {
  plugin = true,

  n = {
    -- toggle
    ["<leader>e"] = { "<cmd> NvimTreeToggle <CR>", "toggle nvimtree" },
  },
}

M.nvterm = {
  n = {
    ["<leader>h"] = { "<cmd> sp <CR>", "horizontal split" },
    ["<leader>v"] = { "<cmd> vs <CR>", "vertical split" },
  }
}

M.hop = {
  n = {
    ["s"] = { "<cmd> HopChar1 <CR>", "hop 1 char" },
    ["S"] = { "<cmd> HopLine <CR>", "hop line" },
  },
  v = {
    ["s"] = { "<cmd> HopChar1 <CR>", "hop 1 char" },
    ["S"] = { "<cmd> HopLine <CR>", "hop line" },
  }
}

M.dap = {
  n = {
    ["<C-b>"] = { "<cmd> DapToggleBreakpoint<CR>", "toggle breakpoint" },
    ["<F4>"] = { "<cmd> DapTerminate<CR>", "terminate debug" },
    ["<F5>"] = { "<cmd> DapContinue<CR>", "debug continue" },
    ["<F8>"] = { "<cmd> DapStepInto<CR>", "step into" },
    ["<F9>"] = { "<cmd> DapStepOut<CR>", "step out" },
    ["<F10>"] = { "<cmd> DapStepOver<CR>", "step over" },
  }
}

M.dapui = {
  n = {
    ["<Leader>dt"] = {
      function()
        require("dapui").toggle()
      end,
      "toggle dap ui" },
  },
}

M.disabled = {
  n = {
    ["<C-s>"] = "",
    ["<C-n>"] = "",
  }
}

return M
