augroup vimrcEx
  autocmd!

  " When editing a file, always jump to the last known cursor position.
  " Don't do it for commit messages, when the position is invalid, or when
  " inside an event handler (happens when dropping a file on gvim).
  autocmd BufReadPost *
    \ if &ft != 'gitcommit' && line("'\"") > 0 && line("'\"") <= line("$") |
    \   exe "normal g`\"" |
    \ endif

  " Cucumber navigation commands
  autocmd User Rails Rnavcommand step features/step_definitions -glob=**/* -suffix=_steps.rb
  autocmd User Rails Rnavcommand config config -glob=**/* -suffix=.rb -default=routes

  " Set syntax highlighting for specific file types
  autocmd BufRead,BufNewFile Appraisals set filetype=ruby
  autocmd BufRead,BufNewFile Gemfile.personal set filetype=ruby

  " Enable spellchecking for Markdown
  autocmd FileType markdown setlocal spell

  " Automatically wrap at 80 characters for Markdown
  autocmd BufRead,BufNewFile *.md setlocal textwidth=80

  " Disable wrap on some languages
  autocmd BufRead,BufNewFile *.slim setlocal textwidth=0
  autocmd BufRead,BufNewFile *.erb setlocal textwidth=0
  autocmd BufRead,BufNewFile *.html setlocal textwidth=0

  " Automatically wrap at 72 characters and spell check git commit messages
  autocmd FileType gitcommit setlocal textwidth=72
  autocmd FileType gitcommit setlocal spell

  " Allow stylesheets to autocomplete hyphenated words
  autocmd FileType css,scss,sass setlocal iskeyword+=-

  " Autocomplete ids and classes in CSS
  autocmd FileType css,scss set iskeyword=@,48-57,_,-,?,!,192-255
  " Add the '-' as a keyword in erb files
  autocmd FileType eruby set iskeyword=@,48-57,_,192-255,$,-

  " Auto reload VIM when settings changed
  autocmd BufWritePost .vimrc so $MYVIMRC
  autocmd BufWritePost *.vim so $MYVIMRC
  autocmd BufWritePost vimrc.symlink so $MYVIMRC

  " Make those debugger statements painfully obvious
  au BufEnter *.rb syn match error contained "\<binding.pry\>"
  au BufEnter *.rb syn match error contained "\<debugger\>"
  au BufEnter *.js syn match error contained "\<debugger\>"
  au BufEnter *.coffee syn match error contained "\<debugger\>"
augroup END
