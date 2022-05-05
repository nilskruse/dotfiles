-- init.lua

-- sub-scripts
require('options')
require('plugins')
require('discord')

require('mappings')
-- plugin stuff
require('lsp-keymaps')
vim.cmd [[ autocmd vimenter * ++nested colorscheme gruvbox ]]



-- require('feline').setup()
