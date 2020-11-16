" 高亮当前行列
set cursorline
"set cursorcolumn

set termguicolors

if &list
  set listchars=tab:\|\→·,nbsp:⣿,extends:»,precedes:«
  set listchars+=eol:¬
  set listchars+=trail:·
  set listchars+=space:␣
endif

" 设置弹出框大小, 0 则有多少显示多少
" set pumheight=20
" set pumblend=20 " 提示框透明

" 主题选择
silent! colorscheme dracula
" coc 美化
"if common#functions#HasPlug('coc.nvim')
    "if !common#functions#HasPlug('vim-multiple-cursors.vim')
        "" coc多光标颜色
        "hi CocCursorRange cterm=bold ctermfg=238 ctermbg=226 gui=bold guifg=#444444 guibg=#ffff00
    "endif

    "hi link CocErrorSign red
    "hi link CocWarningSign yellow
    "hi link CocInfoSign green
    "hi link CocHintSign blue

    "if common#functions#HasCocPlug('coc-highlight')
        "" coc 高亮单词
        "au VimEnter * hi CocHighlightText guifg=#ffb6c1
    "endif

    "if common#functions#HasCocPlug('coc-yank')
        "" coc yank背景颜色
        "hi HighlightedyankRegion cterm=bold ctermfg=238 ctermbg=226 gui=bold guifg=#444444 guibg=#ffa07a
    "endif

    "if common#functions#HasCocPlug('coc-explorer') && has('nvim')
        "" coc-explorer
        "" None 而不是NONE
        "hi CocExplorerNormalFloat guibg=None
    "endif
"endif
