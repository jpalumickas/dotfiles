let g:ale_set_highlights = 0
let b:ale_linters = {
\  'javascript': ['eslint'],
\  'typescript': ['tsserver', 'tslint']
\ }

let g:ale_fixers = {
\    'javascript': ['eslint'],
\    'typescript': ['prettier'],
\    'scss': ['prettier'],
\    'html': ['prettier']
\}
