" Index ctags from any project, including those outside Rails
map <Leader>ct :!ctags --tag-relative -Rf ./.git/tags --exclude=.git --languages=-javascript,sql<CR>

" Exclude Javascript files in :Rtags via rails.vim due to warnings when parsing
let g:Tlist_Ctags_Cmd="ctags --exclude='*.js'"
