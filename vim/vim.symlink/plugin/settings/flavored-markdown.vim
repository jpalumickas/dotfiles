" Support for github flavored markdown
" via https://github.com/jtratner/vim-flavored-markdown

augroup MarkdownEx
    autocmd!
    autocmd BufNewFile,BufRead *.md,*.markdown setlocal filetype=ghmarkdown
augroup END
