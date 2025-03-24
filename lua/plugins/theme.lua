return { {
  "sontungexpt/witch",
  priority = 1000,
  lazy = false,
  config = function(_, opts)
    require("witch").setup(opts)
  end,
}, {
  url = "https://codeberg.org/jthvai/lavender.nvim",
  branch = "stable", -- versioned tags + docs updates from main
  lazy = false,
  priority = 1000,
}, {
  "neanias/everforest-nvim",
  version = false,
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
  -- Optional; default configuration will be used if setup isn't called.
  config = function()
    require("everforest").setup({

    })
  end,
}, {
  "judaew/ronny.nvim",
  priority = 1000,
  config = function()
    vim.cmd.colorscheme("ronny")
    require("ronny").setup()
  end
}, {
  'ribru17/bamboo.nvim',
  lazy = false,
  priority = 1000,
  config = function()
    require('bamboo').setup {
      -- optional configuration here
    }
    require('bamboo').load()
  end,
}, {
  "samharju/synthweave.nvim",
}, {
  "yazeed1s/oh-lucy",
  url = "git@github.com:yazeed1s/oh-lucy.nvim.git", -- Force SSH URL
  lazy = false,                                     -- Load immediately
  priority = 1000                                   -- Ensure it loads before others
} }
