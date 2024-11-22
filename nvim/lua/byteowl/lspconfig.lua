local lspconfig = require('lspconfig')
local cmp = require('cmp')
local luasnip = require('luasnip')

-- Add additional capabilities supported by nvim-cmp
local cmp_cap = require("cmp_nvim_lsp").default_capabilities()

local attach_defaults = function(_, bufnr)
    -- Mappings.
    local opts = { buffer = bufnr, noremap = true, silent = true }

    -- Go To
    vim.keymap.set('n', 'gD', vim.lsp.buf.declaration, opts)
    vim.keymap.set('n', 'gd', vim.lsp.buf.definition, opts)
    vim.keymap.set('n', 'gi', vim.lsp.buf.implementation, opts)
    vim.keymap.set('n', 'gr', vim.lsp.buf.references, opts)

    vim.keymap.set('n', 'K', vim.lsp.buf.hover, opts)
    -- vim.keymap.set('n', '<C-k>', vim.lsp.buf.signature_help, opts)

    vim.keymap.set('n', '<leader>d', vim.lsp.buf.type_definition, opts)
    vim.keymap.set('n', '<leader>r', vim.lsp.buf.rename, opts)
end

-- Auto save when applicable
vim.api.nvim_create_autocmd("BufWritePre", {
    buffer = buffer,
    callback = function()
        vim.lsp.buf.format({async=false})
    end
})

local defservers = {
    'clangd',
    'cmake',
    'jinja_lsp',
    'pyright',
    'lua_ls',
    'zls',
}

-- Setup the servers that use default settings
for _, lsp in ipairs(defservers) do
    lspconfig[lsp].setup({
        on_attach = attach_defaults,
        capabilities = cmp_cap,
    })
end

-- nvim-cmp setup
cmp.setup({
    snippet = {
        expand = function(args)
            luasnip.lsp_expand(args.body)
        end,
    },
    mapping=cmp.mapping.preset.insert({
        ['<C-u>'] = cmp.mapping.scroll_docs(-4),
        ['<C-d>'] = cmp.mapping.scroll_docs(4),
        ['<C-Space>'] = cmp.mapping.complete(),
        ['<CR>'] = cmp.mapping.confirm({
            behavior = cmp.ConfirmBehavior.Replace,
            select = true,
        }),
        ['<Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_next_item()
            else
                fallback()
            end
        end, {'i', 's'}),
        ['<S-Tab>'] = cmp.mapping(function(fallback)
            if cmp.visible() then
                cmp.select_prev_item()
            else
                fallback()
            end
        end, {'i', 's'}),
        ['<C-]>'] = cmp.mapping.open_docs(),
    }),
    sources = {
        {name = 'nvim_lsp'},
        {name = 'luasnip'},
    },
})
