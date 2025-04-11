local map = vim.keymap.set

-- Set custom keybindings.
map('n', '<leader>w', ':w<CR>', { desc = 'Save file' })
map('n', '<leader>q', ':q<CR>', { desc = 'Quit' })

map('n', '<leader>ff', '<cmd>Telescope find_files<CR>', { desc = 'Find files' })
map('n', '<leader>fg', '<cmd>Telescope live_grep<CR>', { desc = 'Grep files' })

map('n', '<leader>h', ':nohlsearch<CR>', { desc = 'Clear highlights' })
