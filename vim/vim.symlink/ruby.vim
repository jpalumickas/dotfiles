augroup vimrcRuby
  autocmd!

  autocmd FileType ruby nnoremap <leader>d obinding.pry<esc>:w<CR>

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile Gemfile.personal set filetype=ruby
augroup END
