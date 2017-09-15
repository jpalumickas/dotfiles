augroup vimrcJavascript
  autocmd!

  autocmd FileType javascript nnoremap <leader>d odebugger;<esc>:w<CR>
  autocmd FileType coffeescript nnoremap <leader>d odebugger<esc>:w<CR>

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile *.es6 setfiletype javascript

  " autocmd BufWritePre *.js,*.jsx Neoformat prettier
augroup END
