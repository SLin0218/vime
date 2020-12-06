" 卸载不在列表中的插件
function! s:uninstall_unused_coc_extensions() abort
    for e in keys(json_decode(join(readfile(expand(g:coc_data_home . '/extensions/package.json')), "\n"))['dependencies'])
        if index(g:coc_global_extensions, e) < 0
            execute 'CocUninstall ' . e
        endif
    endfor
endfunction

" 使用K悬浮显示定义
function! s:show_documentation()
    if (index(['vim','help'], &filetype) >= 0)
        execute 'h '.expand('<cword>')
    else
        call CocAction('doHover')
    endif
endfunction

" 打开树目录
nmap <leader>1 :CocCommand explorer --preset left<CR>
nmap <leader>f :CocCommand explorer --preset floating<CR>
" 显示配置预设 template 如果需要换行，前面不能有缩进，因为空格也会算上
let g:coc_explorer_global_presets = {
        \   '.vim': {
        \      'root-uri': '~/.vim',
        \   },
        \   'floating': {
        \      'position': 'floating',
        \      'floating-position': 'center',
        \      'floating-width': 100,
        \      'open-action-strategy': 'sourceWindow',
        \      'file-child-template': '[git | 2] [selection | clip | 1] [indent] [icon | 1] [diagnosticError & 1] [filename omitCenter 1][modified][readonly] [linkIcon & 1][link growRight 1] [timeCreated | 8]    [size]  '
        \   },
        \   'left': {
        \     'file-child-template': '[git | 2] [selection | clip | 1] [indent][icon | 1] [diagnosticError & 1][filename omitCenter 1][modified][readonly] [linkIcon & 1][link growRight 1]',
        \     'file-child-labeling-template': '[fullpath][link][diagnosticWarning][diagnosticError][size][timeAccessed][timeModified][timeCreated][readonly][modified]'
        \   }
    \ }
" 扩展安装目录
let g:coc_data_home = g:cache_root_path . 'coc/'
" coc-settings.json所在目录
let g:coc_config_home = g:other_config_root_path
let g:markdown_fenced_languages = [
        \ 'vim',
        \ 'help'
    \ ]

" coc-snippets 补全 代码块快速跳转
let g:coc_snippet_next = '<m-j>'
let g:coc_snippet_prev = '<m-k>'

" 导航到修改块
nmap <silent> <leader>gk <Plug>(coc-git-prevchunk)
nmap <silent> <leader>gj <Plug>(coc-git-nextchunk)
" 显示光标处的修改信息
nnoremap <silent> gp <esc>:CocCommand git.chunkInfo<cr>
" 撤销当前块的修改
nnoremap <silent> <leader>gu <esc>:CocCommand git.chunkUndo<cr>
nnoremap <silent> <leader>gh <esc>:CocCommand git.chunkStage<cr>

" 下一个问题
nmap <silent> <leader>en <Plug>(coc-diagnostic-next)
" 上一个问题
nmap <silent> <leader>ep <Plug>(coc-diagnostic-prev)
" 跳转到定义
nmap <silent> gd <Plug>(coc-definition)
" 跳转到类型定义
nmap <silent> gy <plug>(coc-type-definition)
" 跳转到实现
nmap <silent> gn <plug>(coc-implementation)
" 跳转到引用
nmap <silent> gu <plug>(coc-references)
" 重构refactor,需要lsp支持
nmap <silent> <leader>rf <Plug>(coc-refactor)
" 修复代码
nmap <silent> <M-f> <Plug>(coc-fix-current)
" 变量重命名
nmap <silent> <leader>rn <Plug>(coc-rename)
" 函数文档
nmap <silent> K :call <SID>show_documentation()<CR>
" 函数参数的文档
nmap <silent> <leader>k :call CocActionAsync('showSignatureHelp')<CR>

nnoremap <silent> <M-y>  :<C-u>CocList yank<cr>
nnoremap <silent> <space>y  :<C-u>CocList yank<cr>

" 格式化代码
command! -nargs=0 Format :CocCommand prettier.formatFile

augroup CocExplorerCustom
    autocmd!
    " tab 离开时触发关闭 coc-explorer
    autocmd TabLeave * if &filetype == 'coc-explorer' | wincmd w | endif
    "autocmd BufEnter * call <SID>enter_explorer()
augroup END

autocmd User CocNvimInit call s:uninstall_unused_coc_extensions()
autocmd CursorHoldI * sil call CocActionAsync('showSignatureHelp')
