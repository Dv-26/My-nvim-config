local M ={}
    local status, tree = pcall(require, "nvim-tree")
    if not status then
        return
    end

function M.config()
    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    vim.opt.termguicolors = true
    require("nvim-tree").setup()
end


return M
