augroup vimrcRuby
  autocmd!

  autocmd FileType ruby nnoremap <leader>d obinding.pry<esc>:w<CR>

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile Gemfile.personal set filetype=ruby

  autocmd BufNewFile,BufRead */site-cookbooks/*/\(attributes\|definitions\|libraries\|providers\|recipes\|resources\)/*.rb set filetype=ruby.chef
  autocmd BufNewFile,BufRead */site-cookbooks/*/templates/*.erb set filetype=eruby.chef
  autocmd BufNewFile,BufRead */site-cookbooks/*/templates/*/*.erb set filetype=eruby.chef
  autocmd BufNewFile,BufRead */site-cookbooks/*/metadata.rb set filetype=ruby.chef
augroup END
