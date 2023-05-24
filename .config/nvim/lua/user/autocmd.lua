vim.cmd([[
  augroup indentations
    autocmd!
    autocmd FileType html setlocal shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType php setlocal shiftwidth=4 softtabstop=4 expandtab
    autocmd FileType go setlocal tabstop=4 shiftwidth=4 softtabstop=4 noexpandtab
  augroup end

  augroup formatting
    autocmd BufWritePre * lua vim.lsp.buf.format()
  augroup end
]])
