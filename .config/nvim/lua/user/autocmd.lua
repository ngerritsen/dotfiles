vim.cmd([[
  augroup _indentations
    autocmd!
    autocmd FileType html setlocal shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType php setlocal shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
  augroup end
]])
