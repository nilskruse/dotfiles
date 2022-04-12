local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

    Plug 'lervag/vimtex'
    Plug 'neovim/nvim-lspconfig'
    Plug 'andweeb/presence.nvim'

vim.call('plug#end')


