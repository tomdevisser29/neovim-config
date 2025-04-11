-- Bootstrap lazy.nvim, the go to plugin manager.
local lazypath = vim.fn.stdpath('data') .. 'lazy/lazy.nvim'

-- If lazy.nvim is not downloaded yet, clone it from GitHub.
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        'git', 'clone', '--filter=blob:none',
        'https://github.com/folke/lazy.nvim.git', lazypath
    })
end

-- Add lazy.nvim to the run time path.
vim.opt.rtp:prepend(lazypath)

require('lazy').setup({
    {
        'williamboman/mason.nvim',
        config = function()
            require('mason').setup()
        end
    },
    {
        'williamboman/mason-lspconfig.nvim',
        config = function()
            require('mason-lspconfig').setup()
        end
    },
    {
        -- Telescope is a fuzzy finder UI.
        'nvim-telescope/telescope.nvim',
        -- Plenary is a utility library for Neovim plugin development.
        dependencies = { 'nvim-lua/plenary.nvim' }
    },
    {
        -- Treesitter is a syntax highlighter.
        'nvim-treesitter/nvim-treesitter',
        -- When treesitter is first installed, or updated, this will download all the syntax parsers.
        build = ':TSUpdate' 
    },
    'neovim/nvim-lspconfig',
})
