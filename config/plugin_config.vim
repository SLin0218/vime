"""""""""""""""""""""""""""""""""""""""""""
" https://github.com/rhysd/accelerated-jk "
"               快速上下移动              "
"""""""""""""""""""""""""""""""""""""""""""
let g:accelerated_jk_acceleration_limit = 10

" 时间驱动
nmap j <Plug>(accelerated_jk_gj)
nmap k <Plug>(accelerated_jk_gk)

" 位置驱动
" nmap j <Plug>(accelerated_jk_gj_position)
" nmap k <Plug>(accelerated_jk_gk_position)


"""""""""""""""""""""""""""""""""""""""""""
" https://github.com/rhysd/accelerated-jk "
"                窗口动画                 "
"""""""""""""""""""""""""""""""""""""""""""
let g:fzf_layout = {
 \ 'window': 'new | wincmd J | resize 1 | call animate#window_percent_height(0.5)'
\ }
function! OpenAnimatedHtop() abort
  " Open a htop in terminal
  new term://htop
  " Send window to bottom and start with small height
  wincmd J | resize 1
  " Animate height to 66%
  call animate#window_percent_height(0.66)
endfunction

"""""""""""""""""""""""""""""""""""""""""""
"  https://github.com/alvan/vim-closetag  "
"              自动关闭括号               "
"""""""""""""""""""""""""""""""""""""""""""
let g:closetag_filenames = '*.html,*.xhtml,*.phtml,*.xml,*.vue'
let g:closetag_filetypes = 'html,xhtml,phtml,vue'
let g:closetag_xhtml_filetypes = 'xhtml,jsx'
let g:closetag_emptyTags_caseSensitive = 1
let g:closetag_regions = {
  \ 'typescript.tsx': 'jsxRegion,tsxRegion',
  \ 'javascript.jsx': 'jsxRegion',
  \ }
let g:closetag_shortcut = '>'
let g:closetag_close_shortcut = '<leader>>'

""""""""""""""""""""""""""""""""""""""""""""""
"  https://github.com/rbgrouleff/bclose.vim "
"        只关闭 buffer 不关闭窗口           "
"""""""""""""""""""""""""""""""""""""""""""""
nnoremap <M-q> <esc>:Bclose<cr>


""""""""""""""""""""""""""""""""""""""""""""""
"     https://github.com/TaDaa/vimade       "
"              对未激活窗口变暗             "
"""""""""""""""""""""""""""""""""""""""""""""
let g:vimade = {}
let g:vimade.fadelevel = 0.7
let g:vimade.enablesigns = 1

""""""""""""""""""""""""""""""""""""""""""""""
" https://github.com/valloric/MatchTagAlways "
"                 匹配标签                   "
""""""""""""""""""""""""""""""""""""""""""""""
let g:mta_filetypes = {
    \ 'html' : 1,
    \ 'vue' : 1,
    \ 'htm' : 1,
    \ 'xhtml' : 1,
    \ 'xml' : 1,
    \ 'jinja' : 1,
    \}

""""""""""""""""""""""""""""""""""""""""""""
"  https://github.com/t9md/vim-choosewin   "
"                窗口选择                  "
""""""""""""""""""""""""""""""""""""""""""""
" 使用覆盖模式
let g:choosewin_overlay_enable = 0
function s:chooseWin() abort
    if winnr('$') > 1
        exec 'ChooseWin'
    endif
endfunction
nnoremap <silent> - :call <SID>chooseWin()<cr>

"""""""""""""""""""""""""""""""""""""""""""""
"   https://github.com/t9md/vim-choosewin   "
"               输入发切换                  "
"""""""""""""""""""""""""""""""""""""""""""""
let g:smartim_default='com.apple.keylayout.ABC'

""""""""""""""""""""""""""""""""""""""""""""""
"   https://github.com/t9md/brooth/far.vim  "
"                全局替换                   "
"""""""""""""""""""""""""""""""""""""""""""""
set lazyredraw
set ignorecase smartcase

""""""""""""""""""""""""""""""""""""""""""""""
""   https://github.com/iamcco/dict.vim  "
""                  翻译                     "
""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>ye <Plug>DictSearch
vmap <silent> <leader>ye <Plug>DictVSearch
nmap <silent> <leader>yw <Plug>DictWSearch
vmap <silent> <leader>yw <Plug>DictWVSearch
nmap <silent> <Leader>yr <Plug>DictRSearch
vmap <silent> <Leader>yr <Plug>DictRVSearch


