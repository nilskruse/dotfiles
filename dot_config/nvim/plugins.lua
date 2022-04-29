local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

    Plug 'lervag/vimtex'
    Plug 'neovim/nvim-lspconfig'
    Plug 'andweeb/presence.nvim'
    Plug 'morhetz/gruvbox'

vim.call('plug#end')


