vim.cmd("syntax on")
vim.cmd("filetype plugin indent on")
vim.cmd("nohlsearch")
vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.updatetime = 100
vim.opt.cursorline = true

vim.opt.encoding = "utf-8"

-- tabs
vim.opt.autoindent = true
vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.cindent = true
vim.opt.smartindent = true

vim.api.nvim_create_autocmd({ "FileType" },{
    pattern = { "*" },
    command = "setlocal formatoptions-=c formatoptions-=r formatoptions-=o",
})
    
