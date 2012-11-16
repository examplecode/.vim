" ============================================================================
 " File: _vimrc
 " Last Change: 1 September, 2011
 "
 "============================================================================
 set autochdir               " 自动切换当前目录为当前文件所在的目录
 set cursorline              " 突出显示当前行
 set equalalways             " 分割窗口时保持相等的宽/高
 set nocompatible            " 关闭 vi 兼容模式
 "set number                  " 显示行号
 set nonu                    "不显示行号
 set nobackup                " 覆盖文件时不备份
 set noswapfile              " 编辑时不产生交换文件
 set noexpandtab             " 插入 tab 符号不以空格替换
 set history=1000            " 设置冒号命令和搜索命令的命令历史列表的长度
" set autoindent              " 开启自动缩进
 set smartindent             " 开启新行时使用智能自动缩进
 set smarttab                " 开启新行时使用智能 tab 缩进
 set tabstop=4               " 设定 tab 长度为 4
 set shiftwidth=4            " 设定 << 和 >> 命令移动时的宽度为 4
 set showmatch               " 插入括号时，短暂地跳转到匹配的对应括号
 "set guifont=Bitstream_Vera_Sans_Mono:h12:b:cANSI
 set backspace=indent,eol,start
 " 不设定在插入状态无法用退格键和 Delete 键删除回车符
 set guioptions=t            " 隐藏菜单栏、工具栏、滚动条
 set ruler                   " 打开状态栏标尺
 set incsearch               " 输入搜索内容时就显示搜索结果
 set hlsearch                " 搜索时高亮显示被找到的文本
 set ignorecase              " 搜索时忽略大小写
 set fileencodings=ucs-bom,utf-8,cp936,gb18030,big5,euc-jp,euc-kr,latin1

 syntax on                   " 自动语法高亮

 filetype plugin indent on

" winmanager
let g:winManagerWindowLayout='FileExplorer|TagList'  
nmap wm :WMToggle<cr>     

"taglist
nmap tl :TlistToggle<cr>
set sw=4 
set ts=4
let Tlist_GainFocus_On_ToggleOpen=1 	" 切换到tag窗口焦点在tag窗口上

"FuzzyFinder

nmap ft :FufTag<cr>		"根据生成的tag查找
nmap ff :FufFile<cr>		"在当前目录查找
nmap fd :FufDir<cr>		" 查找目录名称并切换当前目录
nmap fb :FufBuffer<cr>	" 在缓冲区中查找


autocmd FileType python setlocal et sta sw=4 sts=4
set hlsearch

"javacomplete
autocmd Filetype java set omnifunc=javacomplete#Complete 
autocmd Filetype java set completefunc=javacomplete#CompleteParamsInf
autocmd Filetype java,javascript,jsp inoremap <buffer> . .<C-X><C-O><C-P>

"vimwiki
let g:vimwiki_use_mouse = 1
let g:vimwiki_list = [{'path': '~/vimwiki/',
\ 'path_html': '~/vimwiki/html/',
\ 'html_header': '~/vimwiki/template/header.tpl',}]

"指定tags文件 ，根据阅读源码的需要修改
set tags=/Users/mac/develop/chromium/src/content/tags
"set tags+=/Users/mac/develop/chromium/src/base/tags
"set tags+=./tags,tags,../tags,../../tags
"set tags+=/home/hunch/.vim/ctags
"set tags+=/home/hunch/.vim/glibctag
