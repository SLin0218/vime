function! ReadOnlyIcon(current) abort
  return &readonly && a:current ? '🔒' : ''
endfunction


function! StatusLine(current, width)
  " 黑名单
 " let s:disable_statusline =
 "   \ 'defx\|denite\|vista\|tagbar\|undotree\|diff\|peekaboo\|sidemenu\|qf\|coc-explorer\|startify'
  " 当前文件如果是黑名单
"  if a:filetype =~? s:disable_statusline
    "return '%{&ft}'
"  endif
  let l:s = ''
  if a:current
    let l:s .= crystalline#mode()
  else
    let l:s .= '%#CrystallineInactive#'
  endif

  let l:s .= '%#Search# %n %#Crystalline# %F%h%w%m '
  let l:s .= ReadOnlyIcon(a:current)

  if a:current
    let l:s .= "%{get(g:,'coc_git_status','')} "
  endif

  let l:s .= '%='
  if a:current
    let l:s .= ' %{&paste ?"PASTE ":""}%{&spell?"SPELL ":""}'
  endif
  let l:s .= a:current ? crystalline#mode_color() : ''
  if a:width > 80
    let l:s .= '  │ %{&ft} │ %{&fenc!=#""?&fenc:&enc} │ %l-%c │ %P '
  else
    let l:s .= ' '
  endif

  return l:s
endfunction

function! TabLine()
  let l:vimlabel = has('nvim') ?  ' NVIM ' : ' VIM '
  return crystalline#bufferline(2, len(l:vimlabel), 1) . '%=%#CrystallineTab# ' . l:vimlabel
endfunction

let g:crystalline_ignore_filetype_list = [
    \ 'tagbar',
    \ 'undotree',
    \ 'diff',
    \ 'coc-explorer',
    \ 'startify'
    \ ]
let g:crystalline_enable_sep = 0
let g:crystalline_statusline_fn = 'StatusLine'
let g:crystalline_tabline_fn = 'TabLine'
let g:crystalline_theme = 'default'

set showtabline=2
set guioptions-=e
set laststatus=2
