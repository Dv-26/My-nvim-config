lua require("core.init")

syntax   on                                 "确定vim打开语法高亮
au BufNewFile,BufRead *.v set ft=verilog    "启用verilog语法高亮
" let g:mkdp_auto_start=1
"let g:mkdp_path_to_chrome='edge'
" let g:mkdp_browserfunc = 'xdg-open'
" let g:verilog_linter = 'verilator'          "启用语法检测
" filetype on                                 "打开文件类型检测
" filetype plugin on                          "为特定的文件类型允许插件文件的载入
" filetype indent on                          "为特定的文件类型载入缩进文件
" augroup FileTypeVerilog
"   autocmd!
" augroup END
