-- init.lua


-- sub-scripts
vim.cmd [[ runtime! options.lua ]]
vim.cmd [[ runtime! plugins.lua ]]
vim.cmd [[ runtime! lsp-keymaps.lua ]]



require'lspconfig'.clangd.setup{}
