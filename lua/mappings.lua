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

-- Mover linha para cima no modo normal
map("n", "<A-k>", ":m .-2<CR>==", { noremap = true, silent = true, desc = "Mover linha para cima" })

-- Mover linha para baixo no modo normal
map("n", "<A-j>", ":m .+1<CR>==", { noremap = true, silent = true, desc = "Mover linha para baixo" })

-- Mover bloco selecionado para cima no modo visual
map("v", "<A-k>", ":m '<-2<CR>gv=gv", { noremap = true, silent = true, desc = "Mover bloco para cima" })

-- Mover bloco selecionado para baixo no modo visual
map("v", "<A-j>", ":m '>+1<CR>gv=gv", { noremap = true, silent = true, desc = "Mover bloco para baixo" })

