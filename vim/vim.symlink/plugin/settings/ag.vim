" Use The Silver Searcher https://github.com/ggreer/the_silver_searcher
if executable('ag')
  " Use Ag over Grep
  set grepprg=ag\ --vimgrep

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  " let g:ctrlp_user_command = 'ag %s -l --nocolor
  "     \ --nogroup
  "     \ --hidden
  "     \ --ignore .git
  "     \ --ignore .svn
  "     \ --ignore .hg
  "     \ --ignore .DS_Store
  "     \ --ignore "**/*.pyc"
  "     \ -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  " let g:ctrlp_use_caching = 0
  "
  let g:ag_prg="ag --vimgrep"
  let g:ag_working_path_mode="r"

  map <leader>f :Ag<space>
endif
