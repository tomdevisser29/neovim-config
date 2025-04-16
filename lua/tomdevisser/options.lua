-- Set line numbers.
vim.opt.number = true
vim.opt.relativenumber = true

-- Configure the tabs and indentation.
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Improve the UI.
vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.opt.cursorline = true

-- Improve the search experience.
vim.opt.ignorecase = true
vim.opt.smartcase = true

-- Better splits.
vim.opt.splitbelow = true
vim.opt.splitright = true

-- Show whitespaces.
vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

-- Preview substitutions live (while typing)
vim.opt.inccommand = 'split'

-- Minimal number of screen lines above or below the cursor.
vim.opt.scrolloff = 10
vim.opt.wrap = true
vim.opt.linebreak = true
vim.opt.colorcolumn = '80,120'
vim.opt.textwidth = 80
