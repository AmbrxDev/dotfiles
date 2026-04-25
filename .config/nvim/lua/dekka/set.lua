vim.opt.guicursor = ""

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.wrap = false

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"

vim.opt.updatetime = 50

-- Set transparency in Neovim (background transparency will inherit terminal setting)
vim.cmd([[
  augroup Transparency
    autocmd!
    autocmd VimEnter * hi Normal guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi NormalNC guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi SignColumn guibg=NONE ctermbg=NONE
    autocmd VimEnter * hi VertSplit guibg=NONE ctermbg=NONE
  augroup END
]])

vim.api.nvim_create_autocmd("FileType", {
  pattern = "markdown",
  callback = function()
    vim.opt.conceallevel = 2
  end,
})

