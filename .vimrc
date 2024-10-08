"==========================================================================="
" ProjectLink: https://github.com/wangmingjob/dotfiles
" AwesomeLink: https://github.com/yangyangwithgnu/use_vim_as_ide
" PluginList: http://www.vimawesome.com
" Author: wangmingjob
" Email: wangmingjob@icloud.com
" Version: 0.0.1
" WebSite: http://www.bmbstack.com
" LastMofify: 2016-07-17
" Desc: a simple vim config for server
"==========================================================================="
"                                     General                               "
"==========================================================================="

"======基础配置======"
syntax on   " 用指定语法高亮配色方案替换默认方案
syntax enable " 开启语法高亮功能
filetype on   " 开启文件类型侦测
filetype plugin on   " 不同文件加载对应的插件
set nocompatible " 关闭兼容∏模式
set nu   " 显示行号
set ruler " 显示光标当前位置
set incsearch  " 开启实时搜索功能
set ignorecase  " 搜索时大小写不敏感
set smartcase "智能大小写
set wildmenu  " 命令行模式智能补全
set wildmode=list:longest,full
set completeopt=longest,menuone
set nobackup " 覆盖文件时不备份
set noswapfile
set sessionoptions=blank,buffers,curdir,folds,help,options,winsize,tabpages
if has('mouse') "鼠标支持
    set mouse=a
endif

"======代码缩进======"
filetype indent on " 自适应不同语言的智能缩进
set expandtab " 将制表符扩展为空格
set tabstop=4 " 设置编辑时制表符占用空格数
set shiftwidth=4 " 设置格式化时制表符占用空格数
set softtabstop=4 " 让 vim 把连续数量的空格视为一个制表符

"=======代码折叠======"
set foldmethod=syntax  "set foldmethod=indent 基于缩进或语法进行代码折叠
set nofoldenable " 启动 vim 时关闭折叠代码
set smarttab " 只能添加4个空格和删除4个空格
set autoindent " 自动缩进
set showmatch " 设置匹配模式，类似当输入一个左括号时会匹配相应的右括号   
set showmode " 显示模式
set cursorline " 高亮当前行
set cursorcolumn
set fileencodings=utf-8,gb18030,cp936,big5 " 显示文件编码格式
set t_Co=256 " 使用256配色
set backspace=2 
set nowrap  "禁止折行
set hls


"=============================================================================="
"                                        Keymap                                "
"=============================================================================="
let mapleader=','
let g:mapleader=','
inoremap jj <esc>
" ^行首, $行尾部
"map 0 ^ 
" 依次遍历window
nnoremap nw <C-W><C-W>
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"=============================================================================="
"                                   PluginList                                 "
"=============================================================================="
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim' "插件管理器
Plugin 'tomasr/molokai' "molokai主题
Plugin 'haya14busa/incsearch.vim' "iMproved searching for vim
Plugin 'scrooloose/nerdtree' "树形目录
Plugin 'Xuyuanp/nerdtree-git-plugin' "nerdtree中显示git状态
Plugin 'tpope/vim-fugitive' "Git wrapper
Plugin 'scrooloose/syntastic' "语法检查
Plugin 'kien/rainbow_parentheses.vim' "多彩括号匹配,例如对于lisp语言
Plugin 'tpope/vim-surround' "is all about surroundings, parentheses, brackets, quotes, XML tags, and more
Plugin 'kien/ctrlp.vim'   "file, buffer, MRU, tag, etc finder
Plugin 'Lokaltog/vim-powerline'
Plugin 'scrooloose/nerdcommenter' "注释助手
Plugin 'xolox/vim-misc' "easytags依赖项
Plugin 'xolox/vim-easytags' "tags生成器,避免使用ctags
Plugin 'majutsushi/tagbar' "显示tagbar目录
Plugin 'pangloss/vim-javascript' "js缩进语法支持
Plugin 'ervandew/supertab' "插入模式下Tab补全
Plugin 'tpope/vim-repeat' "repeating
Plugin 'godlygeek/tabular' "文本Tab补齐
Plugin 'easymotion/vim-easymotion' "跳转提示
Plugin 'haya14busa/incsearch-easymotion.vim' "incsearch-easymotion
Plugin 'mattn/emmet-vim' "emmet.io; html:5 ==> <c-y>,
Plugin 'SirVer/ultisnips' "Track the engine
Plugin 'honza/vim-snippets' "代码片段
Plugin 'Shougo/unite.vim' "find files, buffers, MRU
Plugin 'mkitt/tabline.vim' "Tab line
Plugin 'klen/python-mode' "Python mode
Plugin 'nvie/vim-flake8' "Python代码规范利器
Plugin 'davidhalter/jedi-vim' "Python代码补全
Plugin 'othree/html5.vim' "html5代码补全
Plugin 'plasticboy/vim-markdown' "markdown syntax
Plugin 'groenewege/vim-less' "less syntax
Plugin 'elzr/vim-json' "json syntax
Plugin 'jlanzarotta/bufexplorer'
Plugin 'neocomplcache-snippets_complete'
Plugin 'Shougo/unite-outline'
Plugin 'Shougo/neocomplete'
Plugin 'Shougo/neosnippet'
Plugin 'Shougo/neosnippet-snippets'
Plugin 'fatih/vim-go' "golang开发套件
Plugin 'airblade/vim-gitgutter'
Plugin 'bling/vim-bufferline' "buffer line
Plugin 'junegunn/vim-xmark'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'stanangeloff/php.vim'
Plugin 'taglist.vim'
Plugin 'rking/ag.vim' "超级ag搜索
Plugin 'JulesWang/css.vim'
Plugin 'cakebaker/scss-syntax.vim'"
Plugin 'ashisha/image.vim'
Plugin 'Konfekt/FastFold'
Plugin 'mhinz/vim-startify'
Plugin 'hoaproject/Contributions-Vim-Pp'
Plugin 'jiangmiao/auto-pairs'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required

"=======主题配置======"

set background=dark
colorscheme molokai
let g:molokai_original=1

"=============================================================================="
"                            Plugin configuration                              "
"=============================================================================="

"------------------------------------------------------------------------------
" NERDTree
"------------------------------------------------------------------------------
"autocmd StdinReadPre * let s:std_in=1
"autocmd VimEnter * if argc()==0 && !exists("s:std_in") | NERDTree | endif
nmap <leader>e :NERDTreeToggle<CR> 
let g:NERDTreeDirArrows=1
let g:NERDTreeDirArrowExpandable='▸'
let g:NERDTreeDirArrowCollapsible='▾'

"------------------------------------------------------------------------------
" NERDTree-git-plugin
"------------------------------------------------------------------------------
let g:NERDTreeGitStatusIndicatorMapCustom= {
            \ "Modified"  : "✹",
            \ "Staged"    : "✚",
            \ "Untracked" : "✭",
            \ "Renamed"   : "➜",
            \ "Unmerged"  : "═",
            \ "Deleted"   : "✖",
            \ "Dirty"     : "✗",
            \ "Clean"     : "✔︎",
            \ "Unknown"   : "?"
            \ }


"------------------------------------------------------------------------------
" incsearch
"------------------------------------------------------------------------------
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)

set hlsearch
let g:incsearch#auto_nohlsearch = 1
map n  <Plug>(incsearch-nohl-n)
map N  <Plug>(incsearch-nohl-N)
map *  <Plug>(incsearch-nohl-*)
map #  <Plug>(incsearch-nohl-#)
map g* <Plug>(incsearch-nohl-g*)
map g# <Plug>(incsearch-nohl-g#)

"------------------------------------------------------------------------------
" easymotion
"------------------------------------------------------------------------------
" You can use other keymappings like <C-l> instead of <CR> if you want to
" " use these mappings as default search and somtimes want to move cursor with
" " EasyMotion.
function! s:incsearch_config(...) abort
    return incsearch#util#deepextend(deepcopy({
                \   'modules': [incsearch#config#easymotion#module({'overwin': 1})],
                \   'keymap': {
                \     "\<CR>": '<Over>(easymotion)'
                \ },
                \   'is_expr': 0
                \ }), get(a:, 1, {}))
endfunction

noremap <silent><expr> /  incsearch#go(<SID>incsearch_config())
noremap <silent><expr> ?  incsearch#go(<SID>incsearch_config({'command': '?'}))
noremap <silent><expr> g/ incsearch#go(<SID>incsearch_config({'is_stay': 1}))

map  / <Plug>(easymotion-sn)
omap / <Plug>(easymotion-tn)
map  n <Plug>(easymotion-next)
map  N <Plug>(easymotion-prev)

map <Leader>l <Plug>(easymotion-lineforward)
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
map <Leader>h <Plug>(easymotion-linebackward)

let g:EasyMotion_startofline = 0 " keep cursor column when JK motion"

let g:EasyMotion_smartcase = 1

"------------------------------------------------------------------------------
" Syntastic
"------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_exec = 'tidy5'
let g:syntastic_python_checkers = ['pylint']
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']

"------------------------------------------------------------------------------
" Tagbar
"------------------------------------------------------------------------------
map <leader>t :TagbarToggle<CR> 
"===========Better Rainbow Parentheses======="
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

"------------------------------------------------------------------------------
" ultisnips
"------------------------------------------------------------------------------
" Trigger configuration. Do not use <tab> if you use
" https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"
"
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

"------------------------------------------------------------------------------
" powerline
"------------------------------------------------------------------------------
let g:Powerline_symbols = 'unicode' " compatible/unicode/fancy
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors"
au BufRead,BufNewFile *.md set filetype=markdown  " .md default is modula2"

"==========davidhalter/jedi-vim======"
autocmd FileType python setlocal completeopt-=preview    " disable docstring
let g:jedi#completions_command = "<C-N>"

"=======vim-flake8======="
autocmd FileType python map <buffer> <F3> :call Flake8()<CR>
let g:flake8_quickfix_height=5
let g:flake8_show_in_gutter=1
highlight link Flake8_Error      Error
highlight link Flake8_Warning    WarningMsg
highlight link Flake8_Complexity WarningMsg
highlight link Flake8_Naming     WarningMsg
highlight link Flake8_PyFlake    WarningMsg

"------------------------------------------------------------------------------
" rainbow_parentheses
"------------------------------------------------------------------------------
let g:rbpt_colorpairs = [
            \ ['brown',       'RoyalBlue3'],
            \ ['Darkblue',    'SeaGreen3'],
            \ ['darkgray',    'DarkOrchid3'],
            \ ['darkgreen',   'firebrick3'],
            \ ['darkcyan',    'RoyalBlue3'],
            \ ['darkred',     'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['brown',       'firebrick3'],
            \ ['gray',        'RoyalBlue3'],
            \ ['darkred',     'DarkOrchid3'],
            \ ['black',       'SeaGreen3'],
            \ ['darkmagenta', 'DarkOrchid3'],
            \ ['Darkblue',    'firebrick3'],
            \ ['darkgreen',   'RoyalBlue3'],
            \ ['darkcyan',    'SeaGreen3'],
            \ ['red',         'firebrick3'],
            \ ]


"------------------------------------------------------------------------------
" BufExplorer
"------------------------------------------------------------------------------
" Shortcuts, type <leader>l to quickly navigate to necessary buffer
map <leader>l :BufExplorer<cr>
imap <leader>l <esc>:BufExplorer<cr>
vmap <leader>l <esc>:BufExplorer<cr>

"------------------------------------------------------------------------------
" Fugitive
"------------------------------------------------------------------------------
map ]] ]c
map [[ [c
map <leader>gdi :Gdiff<cr>
map <leader>gst :Gstatus<cr>
map <leader>dup :diffupdate<cr>

"------------------------------------------------------------------------------
" Syntastic
"------------------------------------------------------------------------------
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_aggregate_errors = 1
let g:syntastic_always_populate_loc_list = 0
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

"------------------------------------------------------------------------------
" NeoComplete
"------------------------------------------------------------------------------

" Disable AutoComplPop.
let g:acp_enableAtStartup = 1

" Use neocomplete.
let g:neocomplete#enable_at_startup = 1

" Use smartcase.
let g:neocomplete#enable_smart_case = 1

" Set minimum syntax keyword length.
let g:neocomplete#sources#syntax#min_keyword_length = 3
let g:neocomplete#lock_buffer_name_pattern = '\*ku\*'

" Close popup by <Space>.
" inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"

" Plugin key-mappings.
inoremap <expr><C-g>     neocomplete#undo_completion()
"inoremap <expr><C-l>     neocomplete#complete_common_string()

" Recommended key-mappings.
" <CR>: close popup and save indent.
inoremap <silent> <CR> <C-r>=<SID>my_cr_function()<CR>
function! s:my_cr_function()
    return pumvisible() ? neocomplete#close_popup() : "\<CR>"
endfunction
" <TAB>: completion.
inoremap <expr><TAB>  pumvisible() ? "\<C-n>" : "\<TAB>"
" <C-h>, <BS>: close popup and delete backword char.
inoremap <expr><C-h> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><BS> neocomplete#smart_close_popup()."\<C-h>"
inoremap <expr><C-y>  neocomplete#close_popup()
inoremap <expr><C-e>  neocomplete#cancel_popup()
" Close popup by <Space>.
"inoremap <expr><Space> pumvisible() ? neocomplete#close_popup() : "\<Space>"
" Enable omni completion.
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType php set omnifunc=phpcomplete#CompletePHP

" AutoComplPop like behavior.
let g:neocomplete#enable_auto_select = 1
" Enable heavy omni completion.
if !exists('g:neocomplete#sources#omni#input_patterns')
    let g:neocomplete#sources#omni#input_patterns = {}
endif
let g:neocomplete#sources#omni#input_patterns.php = '[^. \t]->\h\w*\|\h\w*::'
let g:neocomplete#sources#omni#input_patterns.c = '[^.[:digit:] *\t]\%(\.\|->\)'
let g:neocomplete#sources#omni#input_patterns.cpp = '[^.[:digit:] *\t]\%(\.\|->\)\|\h\w*::'


"------------------------------------------------------------------------------
" Vim-go
"------------------------------------------------------------------------------
let g:go_fmt_fail_silently = 1

" Show a list of interfaces which is implemented by the type under your cursor
au FileType go nmap <Leader>s <Plug>(go-implements)

" Show type info for the word under your cursor
au FileType go nmap <Leader>i <Plug>(go-info)

" Open the relevant Godoc for the word under the cursor
au FileType go nmap <Leader>gd <Plug>(go-doc)
au FileType go nmap <Leader>gv <Plug>(go-doc-vertical)

" Open the Godoc in browser
au FileType go nmap <Leader>gb <Plug>(go-doc-browser)

" Run/build/test/coverage
au FileType go nmap <leader>r <Plug>(go-run)
au FileType go nmap <leader>b <Plug>(go-build)
"au FileType go nmap <leader>t <Plug>(go-test)
au FileType go nmap <leader>c <Plug>(go-coverage)

"------------------------------------------------------------------------------
" Markdown
"------------------------------------------------------------------------------
let g:mkdp_path_to_chrome = "google-chrome"
let g:mkdp_auto_start = 0
let g:mkdp_auto_open = 0
let g:mkdp_auto_close = 1
let g:mkdp_refresh_slow = 0

" By default syntax-highlighting for Functions, Methods and Structs is disabled.
" Let's enable them!
let g:go_highlight_functions = 1
let g:go_highlight_methods = 1
let g:go_highlight_structs = 1

highlight clear SignColumn


"------------------------------------------------------------------------------
" Phpcomplete
"------------------------------------------------------------------------------
let g:phpcomplete_relax_static_constraint = 1
let g:phpcomplete_complete_for_unknown_classes = 1
let g:phpcomplete_search_tags_for_variables = 1
let g:phpcomplete_min_num_of_chars_for_namespace_completion = 1
let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_cache_taglists = 1
let g:phpcomplete_enhance_jump_to_definition = 1
let g:phpcomplete_mappings = {
            \  'jump_to_def': '<C-]>',
            \  'jump_to_def_split': '<C-W><C-]>',
            \  'jump_to_def_vsplit': '<C-W><C-\>',
            \}


let g:phpcomplete_add_class_extensions = ['mongo']
let g:phpcomplete_add_function_extensions = ['mongo']

"------------------------------------------------------------------------------
" Tabline
"------------------------------------------------------------------------------
hi TabLine      term=reverse cterm=NONE  ctermfg=144  ctermbg=236  guibg=#232526     
hi TabLineFill  term=reverse cterm=NONE  ctermfg=144  ctermbg=236  guibg=#232526    
hi TabLineSel   term=reverse cterm=bold  ctermfg=238  ctermbg=208  gui=bold guifg=#455354 guibg=#DC6F23
nmap <Leader>1 1gt
nmap <Leader>2 2gt
nmap <Leader>3 3gt
nmap <Leader>4 4gt
nmap <Leader>5 5gt
nmap <Leader>6 6gt
nmap <Leader>7 7gt
nmap <Leader>8 8gt
nmap <Leader>9 9gt

" Auto add head info
" .py file auto add header
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1,  "# -*- coding: utf-8 -*-")
    call append(2,  "# wangmingjob @ " . strftime('%Y-%m-%d', localtime()))
    normal G
    normal o
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

" .sh file auto add header
function HeaderBash()
    call setline(1, "#!/bin/bash")
    call append(1,  "# wangmingjob @ " . strftime('%Y-%m-%d %T', localtime()))
    normal G
    normal o
    normal o
endf
autocmd bufnewfile *.sh call HeaderBash()

" .php file auto add header
function HeaderPHP() 
    call setline(1, "<?php")
    normal G
    normal o
endf
autocmd bufnewfile *.php call HeaderPHP()


autocmd FileType html set shiftwidth=2|set expandtab

"autoload _vimrc(自动加载vimrc配置)
autocmd! bufwritepost _vimrc source %
"=============================================================="
