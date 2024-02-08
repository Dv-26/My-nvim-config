local M ={}

local status, dashboard = pcall(require, "dashboard")
if not status then
    return
end

function M.config()
    require('dashboard').setup{
        theme = 'hyper',
        disable_move = false,
        shortcut_type = 'letter',
        chang_to_vcs_root = false,
        config = {
            -- week_header = {enable = true,},
            header = {
                ' ███╗   ██╗ ███████╗ ██████╗  ██╗   ██╗ ██╗ ███╗   ███╗',
                ' ████╗  ██║ ██╔════╝██╔═══██╗ ██║   ██║ ██║ ████╗ ████║',
                ' ██╔██╗ ██║ █████╗  ██║   ██║ ██║   ██║ ██║ ██╔████╔██║',
                ' ██║╚██╗██║ ██╔══╝  ██║   ██║ ╚██╗ ██╔╝ ██║ ██║╚██╔╝██║',
                ' ██║ ╚████║ ███████╗╚██████╔╝  ╚████╔╝  ██║ ██║ ╚═╝ ██║',
                ' ╚═╝  ╚═══╝ ╚══════╝ ╚═════╝    ╚═══╝   ╚═╝ ╚═╝     ╚═╝',
            },
        },

        hide = {
            statusline = false,
            tabline = false,
            winbar = false,
        },
        -- preview = {
        --     command = true,
        --     file_path = true,
        --     file_height = true,
        --     file_width = true,
        -- },
    }
end

return M
