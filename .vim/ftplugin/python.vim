"Highlight real tabs"
highlight Tab guibg=yellow ctermbg=yellow
match Tab /\t/

" Allow only 88 columns for python code
if exists('+colorcolumn')
  highlight ColorColumn guibg=gray ctermbg=235
  set colorcolumn=88
endif
au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>88v.\+', -1)
