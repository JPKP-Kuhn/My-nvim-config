vim.g.base46_cache = vim.fn.stdpath "data" .. "/base46/"
vim.g.mapleader = " "

-- bootstrap lazy and all plugins
local lazypath = vim.fn.stdpath "data" .. "/lazy/lazy.nvim"

if not vim.uv.fs_stat(lazypath) then
  local repo = "https://github.com/folke/lazy.nvim.git"
  vim.fn.system { "git", "clone", "--filter=blob:none", repo, "--branch=stable", lazypath }
end

vim.opt.rtp:prepend(lazypath)

local lazy_config = require "configs.lazy"

-- load plugins
require("lazy").setup({
  {
    "NvChad/NvChad",
    lazy = false,
    branch = "v2.5",
    import = "nvchad.plugins",
  },

  { import = "plugins" },
}, lazy_config)

-- load theme
dofile(vim.g.base46_cache .. "defaults")
dofile(vim.g.base46_cache .. "statusline")

require "options"
require "autocmds"

vim.schedule(function()
  require "mappings"
end)

-- template for c++
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.cpp",
  callback = function()
    local template_path = vim.fn.stdpath("config") .. "/lua/templates/template.cpp"
    if vim.fn.filereadable(template_path) == 1 then
      vim.cmd("0read " .. template_path)
      vim.api.nvim_win_set_cursor(0, {27, 2})
    else
      print("Template não encontrado: " .. template_path)
    end
  end,
})

-- template for c
vim.api.nvim_create_autocmd("BufNewFile", {
  pattern = "*.c",
  callback = function()
    local template_path = vim.fn.stdpath("config") .. "/lua/templates/template.c"
    if vim.fn.filereadable(template_path) == 1 then
      vim.cmd("0read " .. template_path)
      vim.api.nvim_win_set_cursor(0, {3, 0})
    else
      print("Template não encontrado: " .. template_path)
    end
  end,
})
