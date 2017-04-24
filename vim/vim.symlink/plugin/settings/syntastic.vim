"mark syntax errors with :signs
let g:syntastic_enable_signs=1

"automatically jump to the error when saving the file
let g:syntastic_auto_jump=0

"show the error list automatically
let g:syntastic_auto_loc_list=0

" configure syntastic syntax checking to check on open as well as save
let g:syntastic_check_on_open=0

let g:syntastic_html_tidy_ignore_errors=[" proprietary attribute \"ng-"]

" Checkers
let g:syntastic_ruby_checkers = ['rubocop']
let g:syntastic_scss_checkers = ['scss_lint']
let g:syntastic_slim_checkers = ['slim_lint']
let g:syntastic_javascript_checkers = ['eslint']
let g:syntastic_chef_checkers = ['foodcritic']

" Do not show excluded files in RuboCop
let g:syntastic_ruby_rubocop_args = '--force-exclusion'

" Make ESlint to run local npm
let s:eslint_path = system('PATH=$(npm bin):$PATH && which eslint')
let g:syntastic_javascript_eslint_exec = substitute(s:eslint_path, '^\n*\s*\(.\{-}\)\n*\s*$', '\1', '')
