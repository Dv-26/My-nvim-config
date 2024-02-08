--local M = {}
--   local status,treesitter = pcall(reqire,"treesitter")
--   if not status then
--       return
--   end
----
--function M.config()

    -- for _, config in pairs(require("nvim-treesitter.parsers").get_parser_configs()) do
    --   config.install_info.url = config.install_info.url:gsub("https://hub.nuaa.cf/", "git@github.com:")
    -- end

        require'nvim-treesitter.configs'.setup{
            --添加不同语言
            ensure_installed = {"vim", "bash", "c", "cpp", "lua", "verilog","matlab","markdown"},

            highlight = { endable = true },
            indent = { endable = true },

            rainbow = {
                enable = true,
                extended_mode = true,
                max_file_lines = nil,
            }
        }

--end

--return M
