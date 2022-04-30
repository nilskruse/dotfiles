local Plug = vim.fn['plug#']

vim.call('plug#begin', '~/.config/nvim/plugged')

    Plug 'lervag/vimtex'
    Plug 'neovim/nvim-lspconfig'
    Plug 'andweeb/presence.nvim'
    Plug 'morhetz/gruvbox'
    Plug 'hrsh7th/nvim-cmp' -- Autocompletion plugin
    Plug 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
    Plug 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
    Plug 'L3MON4D3/LuaSnip' -- Snippets plugin
vim.call('plug#end')


