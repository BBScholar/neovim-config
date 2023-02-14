-- set leader as space
vim.g.mapleader = " "

vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- toggle file explorer
vim.keymap.set("n", "<leader>ff", function() 
    vim.cmd.NvimTreeToggle()
end) 

-- next buffer
vim.keymap.set("n", "<leader>fn", vim.cmd.bn )
-- prev buffer
vim.keymap.set("n", "<leader>fp", vim.cmd.bp)

-- floating terminal
vim.keymap.set('n', '<C-t>', '<CMD>lua require("FTerm").toggle()<CR>')
vim.keymap.set('t', '<C-t>', '<C-\\><C-n><CMD>lua require("FTerm").toggle()<CR>')
