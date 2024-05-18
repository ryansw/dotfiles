vim.g['airline_detect_paste'] = true
vim.g['airline_detect_spell'] = false
vim.g['airline#extensions#tabline#enabled'] = false
vim.g['airline_section_y'] = ''
vim.g['airline_theme'] = 'deus'
vim.g['airline_section_z'] = vim.fn['airline#section#create']({'linenr', 'maxlinenr'})
