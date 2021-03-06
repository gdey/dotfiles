set go-=T
set bg=dark
if &background == "dark"
	hi normal guibg=black
	set transp=8
endif

syntax on
set number
set hidden
" User a bigger font. by default.
set guifont=Andale\ Mono:h14.00
colorscheme desert

" use visual bell.
set vb

" incremental search

" On perl file we want to be able to quick run perltidy
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite
autocmd FileType javascript set makeprg=~/bin/check_json.pl\ --verbose\ --sameorder\ --show\ %\ $*
autocmd FileType json set makeprg=~/bin/check_json.pl\ --verbose\ --sameorder\ --show\ %\ $*

" Tidy up a json file, so that I can read it better with _j
set go-=T
set bg=dark
if &background == "dark"
hi normal guibg=black
set transp=8
endif

syntax on
set number
set hidden
" User a bigger font. by default.
set guifont=Andale\ Mono:h14.00
colorscheme desert

" use visual bell.
set vb

" incremental search

" On perl file we want to be able to quick run perltidy
autocmd FileType perl set makeprg=perl\ -c\ %\ $*
autocmd FileType perl set errorformat=%f:%l:%m
autocmd FileType perl set autowrite
autocmd FileType javascript set makeprg=~/bin/check_json.pl\ --verbose\ --sameorder\ --show\ %\ $*
autocmd FileType json set makeprg=~/bin/check_json.pl\ --verbose\ --sameorder\ --show\ %\ $*

function PerlTidy()
  let current_line = line();
endfunction

" Tidy up a json file, so that I can read it better with _j


nnoremap <silent> _j :%!~/bin/check_json.pl --show --sameorder<cr>
nnoremap <silent> _J :%!~/bin/check_json.pl --show --sameorder --min<cr>

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <slient> _t :!perltidy -q<Enter>

" Deparse obsuscated code
nnoremap <silent> _d :.!perl -MO=Deparse 2>/dev/null<cr>
vnoremap <silent> _d :!perl -MO=Deparse 2>/dev/null<cr>

set columns=160


nnoremap <silent> _j :%!~/bin/check_json.pl --show --sameorder<cr>
nnoremap <silent> _J :%!~/bin/check_json.pl --show --sameorder --min<cr>

" Tidy selected lines (or entire file) with _t:
nnoremap <silent> _t :%!perltidy -q<Enter>
vnoremap <slient> _t :!perltidy -q<Enter>

" Deparse obsuscated code
nnoremap <silent> _d :.!perl -MO=Deparse 2>/dev/null<cr>
vnoremap <silent> _d :!perl -MO=Deparse 2>/dev/null<cr>

set columns=160
