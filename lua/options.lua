require "nvchad.options"

-- add yours here!
-- LSP Server to use for Python.
-- Set to "basedpyright" to use basedpyright instead of pyright.
vim.g.lazyvim_python_lsp = "pyright"
-- Set to "ruff_lsp" to use the old LSP implementation version.
-- vim.g.lazyvim_python_ruff = "ruff"

local o = vim.o
o.cursorlineopt = "both" -- to enable cursorline!
vim.opt_local.cursorline = true
