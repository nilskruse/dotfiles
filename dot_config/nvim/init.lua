-- init.lua

-- sub-scripts
require('options')
require('plugins')
require('lsp-keymaps')
require('discord')

-- plugin stuff
require'lspconfig'.clangd.setup{}
vim.cmd [[ autocmd vimenter * ++nested colorscheme gruvbox ]]



-- require('feline').setup()
