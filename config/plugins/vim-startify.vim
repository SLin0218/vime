" For startify
let g:startify_padding_left = 10
let g:startify_custom_header = [
 \'',
 \'',
 \'        ██████  ██▓     ██▓ ███▄    █',
 \'        █    ▒ ▓██▒   ▒▓██▒ ██ ▀█   █',
 \'        ▓██▄   ▒██░   ▒▒██▒▓██  ▀█ ██▒',
 \'        ▒   ██▒▒██░   ░░██░▓██▒  ▐▌██▒',
 \'        █████▒▒░██████░░██░▒██░   ▓██░',
 \'        ▒▓▒ ▒ ░░ ▒░▓   ░▓  ░ ▒░   ▒ ▒',
 \'        ░▒  ░  ░ ░ ▒  ░ ▒ ░░ ░░   ░ ▒░',
 \'         ░  ░    ░ ░  ░ ▒ ░   ░   ░ ░',
 \'            ░      ░    ░           ░',
 \'',
 \'',
 \]


let g:startify_files_number = 6
let g:startify_dir_number = 6

" session
let g:startify_session_persistence = 1
let g:startify_session_dir = g:session_dir

" bookmarks 书签
let g:startify_bookmarks = [
            \ '/Users/lin/.zshrc',
            \ '/Users/lin/.config/clash/config.yaml',
            \ '/Users/lin/.config/nvim/config/plugin_list.vim',
            \ ]

" command 命令
let g:startify_commands = [
    \ {'u': ['插件更新', 'PlugUpdate']},
    \ {'t': ['打开终端', 'terminal']},
    \ {'s': ['启动时间', 'StartupTime']},
    \ ]

let g:startify_lists = [
       \ { 'type': 'sessions',  'header': ['        Sessions']       },
       \ { 'type': 'bookmarks', 'header': ['        Bookmarks']      },
       \ { 'type': 'files',     'header': ['        MRU']            },
       \ { 'type': 'commands',  'header': ['        Commands']       },
       \ ]

       "\ { 'type': 'dir',       'header': ['        MRU '. getcwd()] },

autocmd User Startified nmap <buffer>q <Nop>

" 打开buffer也显示startify
" autocmd BufEnter *
"      \ if !exists('t:startify_new_tab') && empty(expand('%')) && !exists('t:goyo_master') |
"      \   let t:startify_new_tab = 1 |
"      \   Startify |
"      \ endif
