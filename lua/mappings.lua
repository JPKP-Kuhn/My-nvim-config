require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", "9", "$", {noremap = true, silent = true})

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

map({ "n", "i", "v" }, "<C-s>", function ()
  vim.cmd('normal! gg=G')
  vim.cmd('write')
end, {desc = "Identa e salva o arquivo"})

-- Somar 1 ao número sob o cursor
map("n", "<C-=>", "<C-a>", { noremap = true, silent = true, desc = "Incrementar número (Ctrl + =)" })

-- Subtrair 1 ao número sob o cursor
map("n", "<C-->", "<C-x>", { noremap = true, silent = true, desc = "Decrementar número (Ctrl + -)" })

-- Selecionar todo o texto com Ctrl + a
map("n", "<C-a>", "ggVG", { noremap = true, silent = true, desc = "Selecionar tudo" })
map("v", "<C-a>", "<Esc>ggVG", { noremap = true, silent = true, desc = "Selecionar tudo" })
