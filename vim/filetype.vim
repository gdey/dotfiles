" markdown filetype file
if exists("did\_load_filetypes")
  finish
endif

augroup markdown
  au! BufRead,BufNewFile *.mkd setfiletype mkd
  au! BufRead,BufNewFile *.markdown setfiletype mkd
  au! BufRead,BufNewFile *.mdown setfiletype mkd

augroup END
