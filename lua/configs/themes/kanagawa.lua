local colorscheme = "kanagawa"

local status_ok, _ = pcall(require, colorscheme)

if not status_ok then
    vim.notify("colorscheme" .. colorscheme .. "not found !")
end

vim.o.background = "dark"

vim.cmd("highlight CopilotSuggestion guifg=#555555 ctermfg=8")

local M = {}
function M.config()
    -- Default options:
    require('kanagawa').setup({
        compile = false,             -- enable compiling the colorscheme
        undercurl = true,            -- enable undercurls
        commentStyle = { italic = true },
        functionStyle = {},
        keywordStyle = { italic = true},
        statementStyle = { bold = true },
        typeStyle = {},
        transparent = false,         -- do not set background color
        dimInactive = false,         -- dim inactive window `:h hl-NormalNC`
        terminalColors = true,       -- define vim.g.terminal_color_{0,17}
        colors = {                   -- add/modify theme and palette colors
            palette = {},
            theme = { wave = {}, lotus = {}, dragon = {}, all = {} },
        },
        overrides = function(colors) -- add/modify highlights
            return {}
        end,
        theme = "wave",              -- Load "wave" theme when 'background' option is not set
        background = {               -- map the value of 'background' option to a theme
            dark = "wave",           -- try "dragon" !
            light = "lotus"
        },
    })
    
end

vim.cmd("colorscheme kanagawa")

return M

