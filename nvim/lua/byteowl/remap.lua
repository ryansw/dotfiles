-- Mouse Movement
vim.keymap.set({'n', 'v', 'i'}, '<ScrollWheelUp>', '2<C-Y>')
vim.keymap.set({'n', 'v', 'i'}, '<ScrollWheelDown>', '2<C-E>')
vim.keymap.set({'n', 'v', 'i'}, '<RightMouse>', '<nop>')
vim.keymap.set({'n', 'v', 'i'}, '<LeftMouse>', '<nop>')

-- Discourage arrow key movement
vim.keymap.set({'n', 'v', 'i'}, '<Left>', '<nop>')
vim.keymap.set({'n', 'v', 'i'}, '<Right>', '<nop>')
vim.keymap.set({'n', 'v', 'i'}, '<Up>', '<nop>')
vim.keymap.set({'n', 'v', 'i'}, '<Down>', '<nop>')

-- Nerdtree open
vim.keymap.set('n', '<C-n>', vim.cmd.NERDTreeToggle)

-- Easy splits and navigation
vim.keymap.set('n', '<leader>v', vim.cmd.vsplit)
vim.keymap.set('n', '<leader>s', vim.cmd.split)
vim.keymap.set('n', '<leader>q', vim.cmd.quit)
vim.keymap.set('n', '<leader>nt', vim.cmd.tabnew)
vim.keymap.set('n', '<leader>nn', vim.cmd.terminal)

-- Kill the highlight
vim.keymap.set('n', '<leader><leader>', vim.cmd.nohlsearch)

-- Force format
vim.keymap.set('n', '<leader>f', vim.lsp.buf.format)

-- LSP No-Op
vim.keymap.set('n', 'gD', '<nop>')
vim.keymap.set('n', 'gd', '<nop>')
vim.keymap.set('n', 'gi', '<nop>')
vim.keymap.set('n', 'gr', '<nop>')
vim.keymap.set('n', 'K', '<nop>')
vim.keymap.set('n', '<C-k>', '<nop>')
vim.keymap.set('n', '<leader>d', '<nop>')
vim.keymap.set('n', '<leader>r', '<nop>')
