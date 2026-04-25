vim.g.mapleader = " "
vim.keymap.set("n", "<leader>fv", vim.cmd.Ex)

vim.keymap.set('n', 'gf', function()
    if require("obsidian").util.cursor_on_markdown_link() then
        return "<cmd>ObsidianFollowLink<CR>"
    else
        return "gf"
    end
end, {noremap = false, expr = true, silent = true, desc = "Follow link under cursor"})
vim.keymap.set('n', '<leader>ol', '<cmd>ObsidianLink<cr>', {noremap = true, silent = true, desc = "Create a link to a note"})
vim.keymap.set('n', '<leader>oln', '<cmd>ObsidianLinkNew<cr>', {noremap = true, silent = true, desc = "Create a new note and link to it"})

vim.keymap.set('n', '<leader>on', '<cmd>ObsidianNew<cr>', {noremap = true, silent = true, desc = "New Obsidian Note"})
vim.keymap.set('n', '<leader>oo', '<cmd>ObsidianQuickSwitch<cr>', {noremap = true, silent = true, desc = "Find Obsidian Note"})
