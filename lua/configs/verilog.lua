--开启语法高亮
vim.cmd('syntax on')
--对于匹配*.v的文件，设置文件类型为 verlilog
vim.cmd([[ au BufNewFile,BufRead *.v set ft=veirlog ]])
