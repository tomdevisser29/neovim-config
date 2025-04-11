-- Set the global variables, like what providers to use, and the leader key.
vim.g.mapleader = ' '
vim.g.loaded_ruby_provider = 0
vim.g.loaded_perl_provider = 0

-- Load configuration files.
require('tomdevisser/options')
require('tomdevisser/keymaps')
require('tomdevisser/plugins')
require('tomdevisser/lsp')
