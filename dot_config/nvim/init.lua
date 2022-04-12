local Plug = vim.fn['plug#']
local o = vim.opt

vim.call('plug#begin', '~/.config/nvim/plugged')

        Plug 'lervag/vimtex'
        Plug 'neovim/nvim-lspconfig'

vim.call('plug#end')
    

o.expandtab      = true
o.autoindent     = true
o.copyindent     = true
o.smarttab       = false
o.tabstop        = 4
o.softtabstop    = 4
o.shiftwidth     = 4
