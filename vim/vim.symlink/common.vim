" Get off my lawn
nnoremap <Left> :echoe "Use h"<CR>
nnoremap <Right> :echoe "Use l"<CR>
nnoremap <Up> :echoe "Use k"<CR>
nnoremap <Down> :echoe "Use j"<CR>

" Remove empty lines
function TrimEndLines()
  let save_cursor = getpos(".")
  :silent! %s#\($\n\s*\)\+\%$##
  call setpos('.', save_cursor)
endfunction

au BufWritePre * call TrimEndLines()


" Display tabs and trailing spaces visually
set list listchars=tab:\ \ ,trail:·

" Delete trailing spaces on save
au bufwritepre * :%s/\s\+$//e

" Create new tab
nnoremap <leader>n :tab new<CR>
