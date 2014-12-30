" Focus in the main content window
let g:nerdtree_tabs_focus_on_files = 1

" Auto open nerd tree on startup
let g:nerdtree_tabs_open_on_gui_startup = 1
let g:nerdtree_tabs_open_on_console_startup = 1

augroup NERDTreeTabsEx
  autocmd!

  autocmd FileType gitcommit let g:nerdtree_tabs_open_on_gui_startup = 0
  autocmd FileType gitcommit let g:nerdtree_tabs_open_on_console_startup = 0
augroup END

" Toogle
nnoremap <leader>nt :NERDTreeTabsToggle<cr>
nnoremap <leader>nf :NERDTreeTabsFind<cr>
