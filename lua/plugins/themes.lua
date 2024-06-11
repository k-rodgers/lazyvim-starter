return {
  -- {
  --   "catppuccin/nvim",
  --   name = "catppuccin",
  --   priority = 1000,
  --   opts = {
  --     flavour = "mocha",
  --     styles = {
  --       comments = {},
  --       conditionals = {},
  --     },
  --   },
  -- },
  {
    "ellisonleao/gruvbox.nvim",
    priority = 1000,
    config = true,
    -- test
    opts = {
      italic = {
        strings = false,
        emphasis = false,
        comments = false,
        operators = false,
        folds = false,
      },
    },
  },
  -- {
  --   "EdenEast/nightfox.nvim",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     colorblind = {
  --       enable = true,
  --       severity = {
  --         protan = 0.4,
  --         duetan = 0.6,
  --         tritan = 0.4,
  --       },
  --     },
  --   },
  -- },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    opts = {
      style = "night",
      styles = {
        comments = { italic = false },
        keywords = { italic = false },
      },
    },
  },
  -- {
  --   "b4skyx/serenade",
  --   lazy = false,
  --   priority = 1000,
  -- },
  -- {
  --   "sainnhe/everforest",
  --   lazy = false,
  --   priority = 1000,
  -- },
  -- {
  --   "sainnhe/sonokai",
  --   lazy = false,
  --   priority = 1000,
  --   opts = {
  --     style = "espresso",
  --     better_performance = 1,
  --     disable_italic_comment = 1,
  --   },
  -- },
  -- {
  --   "tanvirtin/monokai.nvim",
  --   lazy = false,
  --   priority = 1000,
  -- },
  {
    "LazyVim/LazyVim",
    opts = {
      -- colorscheme = "gruvbox",
      colorscheme = "tokyonight",
    },
  },
}
