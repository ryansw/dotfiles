-- Default tab settings
vim.opt.expandtab = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4

vim.opt.textwidth = 80
vim.opt.colorcolumn = '+1'
vim.opt.wrap = false

vim.opt.number = true
vim.opt.ruler = true
vim.opt.rnu = true

-- Enable Spelling
vim.opt.spell = true

-- Enable Mouse Support (Mouse controls re-mapped)
vim.opt.mouse = 'n'
vim.opt.mousem = ''

-- Diff specific options
if vim.api.nvim_win_get_option(0, 'diff') then
    -- Spell check and rnu annoying in diff mode
    vim.opt.spell = false
    vim.opt.rnu = false
end

-- Extra file types
vim.filetype.add({
    extension = {
        jinja = 'jinja',
        jinja2 = 'jinja',
        j2 = 'jinja',
    },
})
