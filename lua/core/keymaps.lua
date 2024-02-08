local opts = { noremap = true, silent = true }

-- 设置leader键位空格
vim.g.mapleader = " "

-- 快速退出
vim.keymap.set("i", "jf", "<esc>", opts)
vim.keymap.set("i", "JF", "<esc>", opts)
-- 快速选择窗口
vim.keymap.set("n", "<leader>w", "<c-w>", opts)

-- 打开文件树
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<CR>", opts)

-- buffer
vim.keymap.set("n", "[b", ":bp<CR>", opts)
vim.keymap.set("n", "]b", ":bn<CR>", opts)

-- 浮动终端
vim.keymap.set("n","<leader>t",":FloatermNew<CR>",opts)





