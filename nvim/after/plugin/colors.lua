-- if vim.api.nvim_win_get_option(0, 'term') ~= '256color' then
--     -- Disable Background Color Erase
-- end

vim.opt.termguicolors = true
vim.opt.background = 'dark'
vim.cmd.colorscheme('dracula')
