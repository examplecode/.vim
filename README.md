#我的VIM 插件# 

{{tag>vim,plugin}}

## vimrc配置 ##

<file>
" ##############################=
" File: _vimrc
" Last Change: 1 September, 2011
"
"##############################=
set autochdir               " 自动切换当前目录为当前文件所在的目录
set cursorline              " 突出显示当前行
set equalalways             " 分割窗口时保持相等的宽/高
set nocompatible            " 关闭 vi 兼容模式
"set number                  " 显示行号
set nobackup                " 覆盖文件时不备份
set noswapfile              " 编辑时不产生交换文件
set noexpandtab             " 插入 tab 符号不以空格替换
set history=1000            " 设置冒号命令和搜索命令的命令历史列表的长度
set autoindent              " 开启自动缩进
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

</file>

## snipMate.vim ##

http://www.vim.org/scripts/script.php?script_id=2540

类似TextMate风格的片段补全插件，输入一些关键字后 按 “tab"键即可，如在C源码源文件中输入for<tab> 则自动完成下面的代码片段

<code>
for (i = 0; i < count; i++) {
	/* code */
}
</code>


## FuzzyFinder 插件 ##
很强的文件搜索插件，支持，文件,Tag,目录等多种搜索方式。可以完成类似eclipse的ctrl+shift+r的功能

下载地址 http://www.vim.org/scripts/download_script.php?src_id=13961

### 安装 ###

<file>
cd ~/.vim
unzip vim-fuzzyfinder.zip 
</file>

### 设置 ###

增加快捷健映射，比如在vim中输入"ft" 就可以激活Tag查找模式.
<file>
vim ~/.vimrc
"FuzzyFinder
nmap ft :FufTag<cr>     "根据生成的tag查找，需要先执行ctags -R 命令生成tag文件                                                                                                                                                      
nmap ff :FufFile<cr>        "在当前目录查找
nmap fd :FufDir<cr>     " 查找目录名称并切换当前目录
nmap fb :FufBuffer<cr>  " 在缓冲区中查找
</file>


### 技巧 ###

* “ft" 然后输入匹配的方法名称 即可快速定位到方法所在的文件
* "ff" 输入 **/yourfilename 即可搜索当前目录下的及子目录中匹配"youfilename"的文件

## cvim 插件 ##

下载地址 http://www.vim.org/scripts/script.php?script_id=213

### 安装 ###
<file>
cd ~/.vim
unzip vim.zip
</file>

### 启用插件 ###

<file>
vim ~/.vimrc
#增加下面一行
filetype plugin on
</file>

### 技巧及常用命令 ###
修改c文件注释头模板
<file>
~/.vim/c-support/templates/Templates
</file>

常用命令
<file>
\im 生成main函数模板
\if 生成函数模板
</file>



## a.vim 切换源文件和头文件 ##
下载地址 http://www.vim.org/scripts/download_script.php?src_id=7218

### 安装方法 ###

下载a.vim 放置到 ~/.vim/plugin/目录
## winmanager##
下载地址 http://www.vim.org/scripts/script.php?script_id=95

## TagList 插件##
http://www.vim.org/scripts/script.php?script_id=273
## omnicppcomplete 插件##

下载地址：http://www.vim.org/scripts/download_script.php?src_id=7722


需要ctags 命令支持 
<code>
ctags -R --c++-kinds=+p --fields=+iaS  --extra=+q
</code>
## javacomplete 插件##

插件地址 http://www.vim.org/scripts/script.php?script_id=1785



### 使用方法 ###

插入模式下输入部分字符 ctrl+x ctrl + o

## 其他资源 ##

http://www.2maomao.com/blog/wp-content/uploads/vim_tips.txt 

http://www.openvim.com/tutorial.html 一个vim很棒的教程
