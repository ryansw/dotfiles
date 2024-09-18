vim.opt.termguicolors = true
vim.opt.background = 'dark'

-- Disable the dracula background color
-- (this must be done before setting to dracula)
vim.g['dracula_colorterm'] = 0
vim.cmd.colorscheme('dracula')
