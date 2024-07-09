-- vim.lsp.set_log_level("debug")

local util = require("lspconfig.util")

local function find_esbonio()
  -- If there is an active virtual env, use that
  if vim.env.VIRTUAL_ENV then
    return { vim.env.VIRTUAL_ENV .. "/bin/python", "-m", "esbonio" }
  end

  -- Search within the current git repo to see if we can find a virtual env to use.
  local repo = util.find_git_ancestor(vim.fn.getcwd())
  if not repo then
    return nil
  end

  local poetry = vim.fs.find("poetry.lock", { path = repo, upward = true })
  if #poetry > 0 then
    return { "poetry", "run", "python", "-m", "esbonio" }
  end

  local venv = vim.fs.find(".venv", { path = repo, upward = true })
  if #venv > 0 then
    return { venv[1] .. "/bin/python", "-m", "esbonio" }
  end

  print(venv)
  local candidates = vim.fs.find("pyvenv.cfg", { path = repo, upward = true })
  if #candidates == 0 then
    return nil
  end

  return { vim.fn.resolve(candidates[1] .. "./../bin/python"), "-m", "esbonio" }
end

local esbonio_args = {}

local esbonio_cmd = find_esbonio()
if esbonio_cmd then
  esbonio_args["cmd"] = esbonio_cmd
end

return {
  {
    "neovim/nvim-lspconfig",
    ---@class PluginLspOpts
    opts = {
      ---@type lspconfig.options
      servers = {
        esbonio = esbonio_args,
      },
    },
  },
}
