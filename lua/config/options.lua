-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
vim.cmd("set expandtab")
vim.cmd("set tabstop=4")
vim.cmd("set softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("inoremap kj <ESC>")
-- vim.g.mapleader = " "
-- vim.cmd("set number")
-- vim.cmd("set relativenumber")
-- vim.cmd("set hls")
-- vim.cmd("set is")
-- vim.cmd("set ic")
-- vim.cmd("set smartcase")
-- vim.cmd("set nofixendofline")
-- vim.cmd("set expandtab")
-- vim.cmd("set showcmd")
-- vim.cmd("set cursorline")
-- vim.cmd("set colorcolumn=80")
-- vim.cmd("highlight ColorColumn ctermbg=238")

-- Disable LazyVim auto format
vim.g.autoformat = false

-- Delete trailing whitespace on close
vim.api.nvim_create_autocmd({ "BufWritePre" }, {
  pattern = { "*" },
  command = [[%s/\s\+$//e]],
})
