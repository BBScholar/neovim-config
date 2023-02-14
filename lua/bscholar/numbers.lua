
local toggle_group = vim.api.nvim_create_augroup("number_toggle", {clear = true})
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
