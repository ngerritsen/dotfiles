vim.cmd([[
  augroup _indentations
    autocmd!
    autocmd FileType html setlocal shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType php setlocal shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
  augroup end

  augroup _alpha
    autocmd!
    autocmd FileType alpha set showtabline=0 | autocmd BufUnload <buffer> set showtabline=2
  augroup end
]])
