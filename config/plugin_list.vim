" 代码补全插件
" Plug 'ycm-core/YouCompleteMe', {'do': 'python3 install.py --all'} | Plug 'airblade/vim-gitgutter'
Plug 'neoclide/coc.nvim', { 'branch': 'release' }
" 检索
Plug 'junegunn/fzf.vim'
\ | Plug 'junegunn/fzf', { 'do': {-> fzf#install()} }
\ | Plug 'antoinemadec/coc-fzf',  {'branch': 'release'}
" git插件
Plug 'tpope/vim-fugitive', {'on': ['Gwrite', 'Gcommit', 'Gread', 'Gdiff', 'Gblame']}
\ | Plug 'rbong/vim-flog'
\ | Plug 'airblade/vim-gitgutter'
" 注释插件
Plug 'scrooloose/nerdcommenter'
" 生成注释文档
Plug 'kkoomen/vim-doge', {'on': 'DogeGenerate'}
" 数据库
Plug 'tpope/vim-dadbod' | Plug 'kristijanhusak/vim-dadbod-ui' | Plug 'kristijanhusak/vim-dadbod-completion'
" 全局替换插件
Plug 'brooth/far.vim'
" 文件结构导航
Plug 'preservim/tagbar'
" 主题theme类插件
Plug 'dracula/vim'
Plug 'rbong/vim-crystalline'

" 彩虹括号
Plug 'luochen1990/rainbow'
" 函数列表
Plug 'liuchengxu/vista.vim', {'on': ['Vista!!', 'Vista']}
" 自动补全括号
Plug 'alvan/vim-closetag'
" 快速包围
Plug 'tpope/vim-surround'
" Plug 'machakann/vim-sandwich'
" 重复上次的动作
Plug 'tpope/vim-repeat'
" 显示清除尾部空格
Plug 'ntpeters/vim-better-whitespace'
" 代码段
Plug 'honza/vim-snippets'
" Plug 'SirVer/ultisnips'
" 快速选择窗口
Plug 't9md/vim-choosewin',  { 'on': 'ChooseWin' }
" 快速移动
Plug 'easymotion/vim-easymotion'
" , {'on':
"   \ [
"   \ '<Plug>(easymotion-bd-f)', '<Plug>(easymotion-overwin-f)',
"   \ '<Plug>(easymotion-overwin-f2)', '<Plug>(easymotion-bd-jk)',
"   \ '<Plug>(easymotion-overwin-line)', '<Plug>(easymotion-bd-w)',
"   \ '<Plug>(easymotion-overwin-w)', '<Plug>(easymotion-s)',
"   \ ]}
" 对齐
Plug 'junegunn/vim-easy-align', {'on': ['EasyAlign', '<Plug>(EasyAlign)']}
" 对齐线
Plug 'Yggdroot/indentLine', {'for': ['c', 'h', 'cpp', 'go', 'java', 'vim']}
" 多光标
Plug 'mg979/vim-visual-multi'
" csv插件
Plug 'chrisbra/csv.vim', {'for': 'csv'}
" 悬浮终端
Plug 'voldikss/vim-floaterm', {'on': ['FloatermNew', 'FloatermToggle']}
" 笔记插件，支持markdown
" Plug 'vimwiki/vimwiki'
" Plug 'SidOfc/mkdx'
" markdown 预览插件
Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
" , { 'do': { -> mkdp#util#install() }, 'for': ['markdown', 'vim-plug', 'vimwiki'], 'on': 'MarkdownPreview'}
Plug 'mzlogin/vim-markdown-toc', {'on': ['GenTocGFM', 'GenTocRedcarpet', 'GenTocGitLab', 'GenTocMarked']}
" 起始界面
Plug 'mhinz/vim-startify'
" 翻译插件
Plug 'iamcco/dict.vim', {'on':
    \ [
    \ '<Plug>DictSearch', '<Plug>DictVSearch', '<Plug>DictWSearch',
    \ '<Plug>DictWVSearch', '<Plug>DictRSearch', '<Plug>DictRVSearch'
    \ ]}
" tmux相关插件
if  executable("tmux") && strlen($TMUX)
    " tmux与vim窗口间导航
    Plug 'christoomey/vim-tmux-navigator'
    " tmux.conf set -g focus-events on
    Plug 'tmux-plugins/vim-tmux-focus-events'
    " 在tmux和vim之间进行复制与粘贴
    Plug 'roxma/vim-tmux-clipboard'
    " tmux补全插件
    Plug 'wellle/tmux-complete.vim'
endif
" 关闭buffer而不关闭窗口
Plug 'rbgrouleff/bclose.vim', {'on': 'Bclose'}
" latex插件
Plug 'lervag/vimtex', {'for': 'tex'}
Plug 'KeitaNakamura/tex-conceal.vim', {'for': 'tex'}
" 平滑滚动
Plug 'psliwka/vim-smoothie'
" 在命令行使用linux命令新建文件文件夹重命名当前buffer等
Plug 'tpope/vim-eunuch', {'on': ['Mkdir', 'Rename', 'Unlink', 'Delete', 'Move', 'Chmod', 'Cfind', 'Clocate', 'Lfine', 'Llocate', 'SudoEdit', 'SudoWrite', 'Wall', 'W']}
" 最大化窗口，ctrl w o
Plug 'troydm/zoomwintab.vim', {'on': 'ZoomWinTabToggle'}
" vim中文文档
Plug 'yianwillis/vimcdoc'
if has('nvim')
    Plug 'nvim-treesitter/nvim-treesitter'
    Plug 'nvim-treesitter/nvim-treesitter-textobjects'
    Plug 'nvim-treesitter/nvim-treesitter-refactor'
    Plug 'romgrk/nvim-treesitter-context'
else
    Plug 'sheerun/vim-polyglot'
    Plug 'octol/vim-cpp-enhanced-highlight'
endif
" 总是匹配tag
Plug 'valloric/MatchTagAlways', {'for': ['html', 'css', 'xml', 'vue']}
" 显示颜色 例如: #654456
if has('nvim')
    Plug 'norcalli/nvim-colorizer.lua'
else
    Plug 'RRethy/vim-hexokinase',  { 'do': 'make hexokinase' }
endif
" 加强版的 go to file
Plug 'tpope/vim-apathy'
" 查看启动时间
Plug 'dstein64/vim-startuptime', {'on':'StartupTime'}
" 专注阅读
Plug 'junegunn/goyo.vim', { 'on': 'Goyo', 'for': 'markdown' }
\ | Plug 'junegunn/limelight.vim', { 'on': 'Limelight' }
Plug 'markonm/traces.vim'
" 语法检查
Plug 'rhysd/vim-grammarous', {'for': ['markdown', 'vimwiki', 'md', 'tex']}
" 首先需要在config/plugin_list.vim中增加插件
Plug 'matze/vim-move', {'on': [ '<Plug>MoveBlockDown', '<Plug>MoveBlockUp', '<Plug>MoveBlockRight', '<Plug>MoveBlockLeft']}
Plug 'simnalamburt/vim-mundo'
" 暗处理 未激活窗口
Plug 'TaDaa/vimade'
" 中英文切换
Plug 'ybian/smartim'
Plug 'dense-analysis/ale'
Plug 'camspiers/animate.vim'
Plug 'rhysd/accelerated-jk'
Plug 'nvim-treesitter/nvim-treesitter'

" coc插件列表，可根据需要进行删减
let g:coc_global_extensions = [
    \ 'coc-tsserver',
    \ 'coc-vetur',
    \ 'coc-eslint',
    \ 'coc-prettier',
    \ 'coc-vimlsp',
    \ 'coc-marketplace',
    \ 'coc-xml',
    \ 'coc-yank',
    \ 'coc-sh',
    \ 'coc-yaml',
    \ 'coc-cmake',
    \ 'coc-snippets',
    \ 'coc-json',
    \ 'coc-lists',
    \ 'coc-word',
    \ 'coc-tabnine',
    \ 'coc-explorer',
    \ 'coc-ci',
    \ 'coc-git',
    \ ]
