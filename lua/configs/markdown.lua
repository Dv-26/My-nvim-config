--设置浏览器的路径(或是启动浏览器的指令)
vim.g.mkdp_brouser = 'edge'

--设置为1可以在打开markdown文件的时候自动打开浏览器预览,只在打开markdown文件的时候打开一次
vim.g.mkdp_auto_start = 1

--在切换buffer的时候自动关闭预览窗口,设置为0则在切换buffer的时候不自动关闭预览窗口
vim.g.mkdp_auto_close = 1

--设置为1则只有在保存文件,或插入模式的时候更新预览,默认为0,实时更新预览
vim.g.mkdp_refresh_slow = 0

--设置为1则只在所有文件都可以使用MarkdownPreview进行预览,默认只有markdown文件可以使用该命令
vim.g.mkdp_command_for_global = 0

--设置为1,在使用的网络中的其他计算机也嫩访问预览页面
--默认之监听本地(127.0.0.1),其他计算机不能访问
vim.g.mkdp_open_to_the_world = 0

--预览界面的主题(dark和light可选)
vim.g.mkdp_theme = 'dark'
