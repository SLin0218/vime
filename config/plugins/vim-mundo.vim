" 本地历史版本记录 回滚
" https://github.com/simnalamburt/vim-mundo
set undofile
exec 'set undodir=' .  g:undo_dir
let g:mundo_width = 60
let g:mundo_preview_height = 15
let g:mundo_right = 1
" 在下方预览
let g:mundo_preview_bottom = 0
" 不显示帮助
let g:mundo_help = 0
" let g:mundo_preview_statusline = 1
" let g:mundo_tree_statusline = 1
noremap <F5> <esc>:MundoToggle<cr>
