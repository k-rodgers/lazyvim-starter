return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      -- ensure_installed = {
      --   "bash",
      --   "html",
      --   "javascript",
      --   "json",
      --   "lua",
      --   "markdown",
      --   "markdown_inline",
      --   "python",
      --   "query",
      --   "regex",
      --   "tsx",
      --   "typescript",
      --   "vim",
      --   "yaml",
      -- },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    },
  },
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        -- pyright will be automatically installed with mason and loaded with lspconfig
        pyright = {},
        --        esbonio = {
        --          settings = {
        --            sphinx = {
        --              pythonCommand = ".venv/bin/python",
        --            },
        --          },
        --        },
      },
    },
  },
}
