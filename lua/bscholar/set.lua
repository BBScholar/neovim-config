vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.guicursor = "" 

vim.opt.nu = true 
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4 
vim.opt.shiftwidth = 4
vim.opt.expandtab = true 

vim.opt.smartindent = true 

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true


vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes" 
vim.opt.isfname:append("@-@")
vim.opt.updatetime = 50
-- vim.opt.colorcolumn = "80"
vim.g.mapleader = " "

-- highlight yanked text for some time period
vim.api.nvim_create_autocmd("TextYankPost", {
    group = vim.api.nvim_create_augroup("highlight_yank", {}),
    desc = "Highlight selection on yank", 
    pattern = "*",
    callback = function() 
        vim.highlight.on_yank {higroup = "IncSearch", timeout = 150 }
    end,
})

-- linenumber toggle logic
local toggle_group = vim.api.nvim_create_augroup("number_toggle", {})
vim.api.nvim_create_autocmd("InsertEnter", {
    group = toggle_group,
    desc = "Toggles between relative and absolute line numbers automatically",
    pattern = "*",
    callback = function()
        vim.opt.relativenumber = false
    end,
})

vim.api.nvim_create_autocmd("InsertLeave", {
    group = toggle_group,
    pattern = "*",
    callback = function()
        vim.opt.relativenumber = true
    end,
})

-- vim.api.nvim_create_autocmd()
