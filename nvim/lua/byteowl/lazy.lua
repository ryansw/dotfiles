-- From: https://github.com/folke/lazy.nvim?tab=readme-ov-file#-installation
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git", "clone", "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git", "--branch=stable", -- latest stable release
        lazypath
    })
end
vim.opt.rtp:prepend(lazypath)

require("lazy").setup({
    -- Obsidian
    "epwalsh/obsidian.nvim",

    -- Telescope (fuzzy finder)
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.6",
        dependencies = {"nvim-lua/plenary.nvim"}
    },

    -- treesitter
    {"nvim-treesitter/nvim-treesitter", build = ':TSUpdate'},

    -- undotree
    "mbbill/undotree",

    -- fugitive
    "tpope/vim-fugitive",

    -- git gutter
    "airblade/vim-gitgutter",

    -- tmux integrations
    "tmux-plugins/vim-tmux",
    "christoomey/vim-tmux-navigator",

    -- airline
    {
        "vim-airline/vim-airline",
        init = function()
            -- These need to be set before the plugin loads
            -- Other options can be after
            vim.g['airline_experimental'] = true
            vim.g['airline_powerline_fonts'] = 1
        end,
        dependencies = {
            "vim-airline/vim-airline-themes",
        }
    },

    -- Dracula Theme
    {"dracula/vim", name='dracula'},

    -- Nerdtree
    "scrooloose/nerdtree",

    -- LSP Config
    "neovim/nvim-lspconfig",

    -- NVIM Autocomplete
    "hrsh7th/nvim-cmp",
    "hrsh7th/cmp-nvim-lsp",
    "L3MON4D3/LuaSnip",
})
