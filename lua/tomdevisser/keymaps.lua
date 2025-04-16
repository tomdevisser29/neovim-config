local map = vim.keymap.set

-- Set custom keybindings.
map('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
map('n', '<leader>q', ':q<CR>', { desc = 'Quit' })

map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'Find files' })
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { desc = 'Grep files' })

map('n', '<leader>h', ':nohlsearch<CR>', { desc = 'Clear highlights' })

map('n', '<C-h>', '<C-w><C-h>', { desc = 'Move focus to the left window' })
map('n', '<C-l>', '<C-w><C-l>', { desc = 'Move focus to the right window' })
map('n', '<C-j>', '<C-w><C-j>', { desc = 'Move focus to the lower window' })
map('n', '<C-k>', '<C-w><C-k>', { desc = 'Move focus to the upper window' })

map('n', '<leader>lf', function()
    vim.lsp.buf.format({ async = true })
end, { desc = "LSP Format buffer" })

map('n', '<leader>sd', vim.diagnostic.open_float, { desc = "Show diagnostic" })
