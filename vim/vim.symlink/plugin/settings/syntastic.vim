"mark syntax errors with :signs
let g:syntastic_enable_signs=1

"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0

"show the error list automatically
let g:syntastic_auto_loc_list=1

" configure syntastic syntax checking to check on open as well as save
" let g:syntastic_check_on_open=1

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]
let g:syntastic_ruby_checkers = ['mri', 'rubocop']
