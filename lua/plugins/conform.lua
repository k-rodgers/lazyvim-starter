return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- Ensure shfmt is in the formatters_by_ft list
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.sh = { "shfmt" }

      -- Configure shfmt with -fn (place opening braces on a separate line)
      opts.formatters = opts.formatters or {}
      opts.formatters.shfmt = {
        prepend_args = { "-fn", "-i 4" },
      }
    end,
  },
}
