" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher

function Search(string) abort
  let saved_shellpipe = &shellpipe
  let &shellpipe = '>'
  try
    execute 'Ack!' shellescape(a:string, 1)
  finally
    let &shellpipe = saved_shellpipe
  endtry
endfunction

if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --vimgrep

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag -Q -l --nocolor --hidden -g "" %s'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0

  let g:ag_prg="ag --vimgrep"
  let g:ag_working_path_mode="r"
  let g:ackprg = 'ag --vimgrep'

  " map <leader>f :Ack!<space>
  map <leader>f :call Search("")<left><left>
endif
