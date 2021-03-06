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
nnoremap q <esc>:Bclose<cr>

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
"               输入法切换                  "
"""""""""""""""""""""""""""""""""""""""""""""
let g:smartim_default='com.apple.keylayout.UnicodeHexInput'

""""""""""""""""""""""""""""""""""""""""""""""
"   https://github.com/t9md/brooth/far.vim  "
"                全局替换                   "
"""""""""""""""""""""""""""""""""""""""""""""
set lazyredraw
set ignorecase smartcase

""""""""""""""""""""""""""""""""""""""""""""""
"    https://github.com/iamcco/dict.vim      "
"                  翻译                      "
""""""""""""""""""""""""""""""""""""""""""""""
nmap <silent> <leader>ye <Plug>DictSearch
vmap <silent> <leader>ye <Plug>DictVSearch
nmap <silent> <leader>yw <Plug>DictWSearch
vmap <silent> <leader>yw <Plug>DictWVSearch
nmap <silent> <Leader>yr <Plug>DictRSearch
vmap <silent> <Leader>yr <Plug>DictRVSearch


""""""""""""""""""""""""""""""""""""""""""""""
"    https://github.com/iamcco/dict.vim      "
"                彩虹括号                    "
""""""""""""""""""""""""""""""""""""""""""""""
let g:rainbow_active = 1

""""""""""""""""""""""""""""""""""""""""""""""
"    https://github.com/iamcco/dict.vim      "
"                多光标                      "
""""""""""""""""""""""""""""""""""""""""""""""
let g:multi_cursor_use_default_mapping=0

" Default mapping
let g:multi_cursor_start_word_key      = '<C-n>'
let g:multi_cursor_select_all_word_key = '<A-n>'
let g:multi_cursor_start_key           = 'g<C-n>'
let g:multi_cursor_select_all_key      = 'g<A-n>'
let g:multi_cursor_next_key            = '<C-n>'
let g:multi_cursor_prev_key            = '<C-p>'
let g:multi_cursor_skip_key            = '<C-x>'
let g:multi_cursor_quit_key            = '<Esc>'
