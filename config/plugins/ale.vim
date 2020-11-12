" 禁用lsp  避免和 coc 冲突
let g:ale_disable_lsp = 1
let g:ale_sign_column_always = 1

let g:ale_linters = {
			\   '*': ['remove_trailing_lines', 'trim_whitespace'],
			\   'vue': ['vls', 'eslint'],
			\   'asm': ['gcc'],
			\   'nasm': ['nasm'],
			\   'c': ['cppcheck'],
			\   'cpp': ['cppcheck'],
			\   'cuda': ['nvcc'],
			\   'java': ['javac'],
			\   'javascript': ['eslint'],
			\   'lua': ['luac'],
			\   'yaml': ['prettier'],
			\   'latex': ['alex'],
			\ }


" 使用开启列标志
let g:ale_sign_column_always = 1
" only run linters named in ale_linters seetings
let g:ale_linters_explicit = 1

" 高亮显示错误地方
let g:ale_set_highlights = 1
"自定义error和warning图标
let g:ale_sign_error = '>>'
let g:ale_sign_warning = '!!'
"状态栏设置,状态栏中整合ale
let g:ale_statusline_format = ['❌ %d', '⚡ %d', '👌 OK']
"提示栏设置，显示Linter名称,出错或警告等相关信息
let g:ale_echo_msg_format = '[%severity% %linter%] -> %s'
let g:ale_echo_msg_error_str = '❌'
let g:ale_echo_msg_warning_str = '⚡'
" highlight clear ALEErrorSign
" highlight clear ALEWarningSign

"ccls
let g:ale_cpp_ccls_init_options = {
	\   'cache': {
	\       'directory': '/tmp/ccls/cache',
	\   },
	\ }
let g:ale_completion_enabled = 1
