"https://github.com/yangyangwithgnu/use_vim_as_ide

"==========================================================================="
"                                     General                               "
"==========================================================================="
"======基础配置======"
syntax enable " 开启语法高亮功能
syntax on   " 用指定语法高亮配色方案替换默认方案
filetype on   " 开启文件类型侦测
filetype plugin on   " 不同文件加载对应的插件
set nocompatible " 关闭兼容模式
set nu   " 显示行号
set ruler " 显示光标当前位置
set incsearch  " 开启实时搜索功能
set ignorecase  " 搜索时大小写不敏感
set wildmenu  " 命令行模式智能补全

"======代码缩进======"
filetype indent on " 自适应不同语言的智能缩进
set expandtab " 将制表符扩展为空格
set tabstop=4 " 设置编辑时制表符占用空格数
set shiftwidth=4 " 设置格式化时制表符占用空格数
set softtabstop=4 " 让 vim 把连续数量的空格视为一个制表符

"=======代码折叠======"
set foldmethod=syntax  "set foldmethod=indent 基于缩进或语法进行代码折叠
set nofoldenable " 启动 vim 时关闭折叠代码
set foldlevel=99
set cindent
set smarttab
set autoindent " Copy indent from current line when starting a new line
set showmatch " When a bracket is inserted, briefly jump to the matching one
set showmode " Show the mode
set nobackup " No backup
set cursorline " 高亮当前行
set fileencodings=utf-8,gb18030,cp936,big5 " Set the encode
set t_Co=256 " If under tty, use 256
set pastetoggle=<F10> "" Bind `F10` to `:set paste`
set backspace=2 " same as ":set backspace=indent,eol,start" in vim7.4
set nowrap  "禁止折行

"=============================================================================="
"                                         Plugin                               "
"=============================================================================="
set nocompatible              " be iMproved, required
filetype off                  " required

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

Plugin 'gmarik/Vundle.vim'
Plugin 'Lokaltog/vim-powerline'
Plugin 'chriskempson/tomorrow-theme'
Plugin 'kien/rainbow_parentheses.vim'
Plugin 'nvie/vim-flake8'
Plugin 'davidhalter/jedi-vim'
Plugin 'godlygeek/tabular'
Plugin 'scrooloose/nerdtree'
Plugin 'mitsuhiko/vim-jinja'
Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'mattn/emmet-vim'
Plugin 'Tagbar'
Plugin 'Auto-Pairs'
Plugin 'tomasr/molokai'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required


"==========主题配置==========="
set t_Co=256
set background=dark
colorscheme molokai
let g:molokai_original = 1

"=============================================================================="
"                                        Keymap                                "
"=============================================================================="
let mapleader=","   " 定义快捷键的前缀，即<Leader>

nmap lb 0
nmap le $

vnoremap <Leader>y   "copy
nmap <Leader>p       "past

nmap <Leader>q :q<CR>  " 定义快捷键关闭当前分割窗口
nmap <Leader>Q :qa!<CR>  " 不做任何保存，直接退出 vim
nmap <Leader>WQ :wa<CR>:q<CR> " 定义快捷键保存所有窗口内容并退出 vim

nnoremap nw <C-W><C-W>  " 依次遍历子窗口


nnoremap <Leader>lw <C-W>l  " 跳转至右方的窗口
nnoremap <Leader>hw <C-W>h  " 跳转至左方的窗口
nnoremap <Leader>kw <C-W>k  " 跳转至上方的子窗口
nnoremap <Leader>jw <C-W>j  " 跳转至下方的子窗口

nmap <leader>l :set list!<CR> " Not display above list
nmap <Leader>pa %  " 定义快捷键在结对符之间跳转，助记pair
map <buffer> <S-e> :w<CR>:!/usr/bin/env python % <CR> " Execute file being edited with <Shift> + e:

"=============================================================================="
"                                        Plugin configuration                  "
"=============================================================================="
"=========Tagbar==========="
map <leader>t :TagbarToggle<CR> 

"==========NERDTree========"
nmap <leader>e :NERDTreeToggle<CR> 

"==============vim-powerline==========="
let g:Powerline_symbols = 'unicode' " compatible/unicode/fancy
set laststatus=2   " Always show the statusline
set encoding=utf-8 " Necessary to show Unicode glyphs
set t_Co=256 " Explicitly tell Vim that the terminal supports 256 colors"
au BufRead,BufNewFile *.md set filetype=markdown  " .md default is modula2

"===========Better Rainbow Parentheses======="
au VimEnter * RainbowParenthesesToggle
au Syntax * RainbowParenthesesLoadRound
au Syntax * RainbowParenthesesLoadSquare
au Syntax * RainbowParenthesesLoadBraces

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

"==========SirVer/ultisnips========"
" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-b>"
let g:UltiSnipsJumpBackwardTrigger="<c-z>"

"============rainbow_parentheses.vim============"
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


" cc is only exist >= `Vim7.3`
if exists('+colorcolumn')
    set cc=81 " Short for colorcolumn
else
    au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)
endif
hi ColorColumn ctermbg=lightgrey guibg=lightgreya  " Highlighter cc

" Auto add head info
" .py file auto add header
function HeaderPython()
    call setline(1, "#!/usr/bin/env python")
    call append(1,  "# -*- coding: utf-8 -*-")
    call append(2,  "# Tanky Woo @ " . strftime('%Y-%m-%d', localtime()))
    normal G
    normal o
    normal o
endf
autocmd bufnewfile *.py call HeaderPython()

" .sh file auto add header
function HeaderBash()
    call setline(1, "#!/bin/bash")
    call append(1,  "# Tanky Woo @ " . strftime('%Y-%m-%d %T', localtime()))
    normal G
    normal o
    normal o
endf
autocmd bufnewfile *.sh call HeaderBash()

autocmd FileType html set shiftwidth=2|set expandtab
"=============================================================="