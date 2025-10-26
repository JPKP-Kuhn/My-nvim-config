require("nvchad.configs.lspconfig").defaults()

local servers = { "html", "cssls" }
vim.lsp.enable(servers)
vim.lsp.enable('pyright')
vim.lsp.enable('clangd')

-- read :h vim.lsp.config for changing options of lsp servers 
