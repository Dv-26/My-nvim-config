local M = {}
local status,blanking = pcall(require,"ibl")
if not status then
    return
end

function M.config()
    require("ibl").setup({
        exclude={
            filetypes = { "dashboard" },
        },
    })
end

return M
