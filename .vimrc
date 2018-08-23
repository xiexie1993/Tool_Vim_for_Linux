"=============================================================================="
"" 配置文件位置    ~.vimrc
"" 注释：以 " 开头的部分是注释
"=============================================================================="

" 让配置变更立即生效 


""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
"" 基础设置
""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" set fileencoding=gb18030 
" set fileencodings=utf-8,gb18030,utf-16,big5
" set fencs=utf-8,gbk    " 打开一个文件时，尝试utf8,gbk两种编码，

set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936  " 该选项是vim写入文件时采用的编码类型
set termencoding=utf-8                                    " 该选项代表输出到客户终端（Term）采用的编码类型,默认空值，也就是输出到终端时不进行编码转换
set encoding=utf-8                                        " 该选项使用于缓冲的文本(你正在编辑的文件)，寄存器，Vim 脚本文件等等

set t_Co=256                  " 使vim支持256色
set noswapfile                " 禁止vim产生交换文件

" 关闭菜单栏和工具栏
set guioptions-=m              " 关闭菜单栏     remove menu bar  
set guioptions-=T              " 关闭工具栏     remove toolbar  
set guioptions-=r              " 关闭右边滚动栏 remove right-hand scroll bar  
set guioptions-=L              " 关闭左边滚动栏 remove left-hand scroll bar
" set guioptions+=m              " 开启菜单栏     show menu bar  
" set guioptions+=T              " 开启工具栏     show toolbar  
" set guioptions+=r              " 开启右边滚动栏 show right-hand scroll bar  
" set guioptions+=L              " 开启左边滚动栏 show left-hand scroll bar


set shortmess=atI              " 启动的时候不显示那个援助索马里儿童的提示`
set mouse=a                    " 可以在buffer的任何地方使用鼠标（类似office中在工作区双击鼠标定位）

set noeb                       " 这样当错误发生的时候将不会发出 bi 的一声。（ noeb 是 noerrorbells 的缩写），
set vb                         " 代替 bell 的将是屏幕的闪烁。（ vb 是 visualbell 的缩写）
set vb t_vb=                   " 尤其是在跟他人同住（比如学生宿舍）的时候这样的闪烁也会影响别人。

set number                                                     " 显示行号                show line numbers
" set colorcolumn=80                                             " 设置右边边缘线          Right margin
set cc=80,120                                                  " 设置80和120列高亮
" set list                                                       " 显示制表符号和回车 (以“$”表示的换行符和以“^I”表示的制表符)
" set nolist                                                     " 退出显示(隐藏不可见字符)
" set list!                                                      " 切换显示或隐藏不可见字符
" set list TAB                                                   " 显示 TAB 键 
" set listchars                                                  " 配置使用何种符号来显示不可见字符。例如以下命令
" set listchars=tab:>-,trail:-                                   " TAB会被显示成  >—  而行尾多余的空白字符显示成  - 
set listchars=tab:>_,trail:·,extends:>,precedes:<              " 将制表符（tab）显示为 >_ 将尾部空格（trail）显示为 · 将左则超出屏幕范围部分（precedes）标识为 < 将右侧超出屏幕范围部分（extends）标识为 >
" set listchars=tab:\|\ ,trail:-,extends:>,precedes:<            " 将制表符（tab）显示为 |  将尾部空格（trail）显示为 - 将左则超出屏幕范围部分（precedes）标识为 < 将右侧超出屏幕范围部分（extends）标识为 >
" set listchars=tab:>_,nbsp:·,trail:\],extends:>,precedes:<      " 将制表符（tab）显示为 >_ 将尾部空格（trail）显示为 ] 将左则超出屏幕范围部分（precedes）标识为 < 将右侧超出屏幕范围部分（extends）标识为 >
" digraphs                                                     " 查看可以输入的特殊字符
" set listchars_result                                         " 显示颜色

set history=1000             " 记录历史条数
set laststatus=2             " 状态栏行数    use 2 lines for the status bar
set nowrap                   " 不自动换行    dont wrap lines

set backspace=2              " 允许将一行退格到上面一行的结尾

set mouse=a                  " 所有模式下允许使用鼠标  use mouse in all modes
set showcmd                  " 在状态栏显示命令状态    show typed command in status bar
set textwidth=79             " 文本宽度

syntax on                    " 进行语法检验，颜色显示。

" 高亮最近行  highlight current line
au WinLeave * set nocursorline nocursorcolumn
au WinEnter * set cursorline cursorcolumn
set cursorline cursorcolumn

set report=0                   " 通过使用: commands命令，告诉我们文件的哪一行被改变过
" set fillchars=vert:\ ,stl:\    " 在被分割的窗口间显示空白，便于阅读 ,stlnc:\(加了这个wm分割兰有)


" 使用超级用户写文件 w!! to sudo & write a file
cmap w!! %!sudo tee >/dev/null %

" set title           " 标题                    show file in titlebar


"" 默认状态栏设置

" 句加入到vimrc中，这个命令将保证状态栏显示在编辑器窗口的倒数第二行。
" set laststatus=2

" 可以看到现在命令缓冲区总是在编辑器窗口的最下边，而状态栏则也总是显示在下面。当然，状态栏确实会占据一些编辑空间，但是你随时可以决定是否需要显示状态栏。你可以在Vim中执行下面的命令来隐藏状态栏：
" :set laststatus=0

"  :set guifont=*  "" 打开字体设置面板



set statusline=  
set statusline+=%7*\[%n]                                  "buffernr  
set statusline+=%1*\ %<%F\                                "文件路径  
set statusline+=%2*\ %y\                                  "文件类型  
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "编码1  
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "编码2  
set statusline+=%4*\ %{&ff}\                              "文件系统(dos/unix..)   
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "语言 & 是否高亮，H表示高亮?  
set statusline+=%8*\ %=\ row:%l/%L\ (%03p%%)\             "光标所在行号/总行数 (百分比)  
set statusline+=%9*\ col:%03c\                            "光标所在列  
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Read only? Top/bottom  
  function! HighlightSearch()  
        if &hls  
            return 'H'  
        else  
            return ''  
        endif  
  endfunction  
  hi User1 ctermfg=white  ctermbg=darkred  
  hi User2 ctermfg=blue  ctermbg=58  
  hi User3 ctermfg=white  ctermbg=100  
  hi User4 ctermfg=darkred  ctermbg=95  
  hi User5 ctermfg=darkred  ctermbg=77  
  hi User7 ctermfg=darkred  ctermbg=blue  cterm=bold  
  hi User8 ctermfg=231  ctermbg=blue  
  "hi User9 ctermfg=#ffffff  ctermbg=#810085  
  hi User0 ctermfg=yellow  ctermbg=138  
  " 颜色可以根据自己喜欢进行修改，以上仅供参考。




" 文件设置
"
" set selection=exclusive
" set selectmode=mouse,key

" 默认输入设置  Default Indentation
" set autoindent
" set smartindent     " indent when
" set tabstop=4       " 制表符宽度              tab width 
" set softtabstop=4   " backspace
" set shiftwidth=4    " indent width
" set textwidth=79    " 文本宽度 
" set smarttab
" set expandtab       " expand tab to space

" syntax on

" 文件编码 encoding dectection
"" set encoding=utf-8
"" set fileencodings=utf-8,chinese,latin-1
"" if has("win32")
""  set fileencoding=chinese
"" else
""  set fileencoding=utf-8
"" endif
"" set fileencodings=utf-8,gb2312,gb18030,gbk,ucs-bom,cp936,latin1



""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
"" 插件设置
""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" 设置加载插件目录
set rtp+=~/.vim/


""""""""""""  透明度插件 vimtweak
""""""""""""  前提： windows系统 安装 vimtweak.dll

" au GUIEnter * call libcallnr("vimtweak.dll", "SetAlpha", 200)    " 透明度设置。数值越小,越透明

""""""""""""  插件管理插件 vundle
""""""""""""  前提：安装 vundle


" set nocompatible " be iMproved, required
" filetype off                  " required
" 
" " 将Vundle插件的目录添加到gvim的运行时变量中
" set rtp+=$HOME/.vim/bundle/Vundle.vim/
" call vundle#begin('$USERPROFILE/.vim/bundle/')
" " 插件列表 All of your Plugins must be added before the following line
" Plugin 'VundleVim/Vundle.vim'
" Plugin 'scrooloose/nerdtree'
" call vundle#end()            " required
" filetype plugin indent on    " required

""" 使用方法,在命令模式下
    " :PluginInstall      " 检查列表的插件是否安装，无则安装


""""""""""""  目录树插件 NERDTree
""""""""""""  前提：安装 NERD_Tree

" let NERDTreeWinPos = 'right'
" let NERDTreeWinPos = 'left'
" let g:netrw_winsize = 35
" nmap <silent> <leader>fe :Sexplore!<cr>

""" 快捷键设置
nmap <F6> :NERDTreeToggle<cr>


""" 使用方法,在命令模式下 :NERDTree
                "        ?   快速帮助文档
                "        o   打开一个目录或者打开文件，创建的是 buffer，也可以用来打开书签
                "        go  打开一个文件，但是光标仍然留在 NERDTree，创建的是 buffer
                "        t   打开一个文件，创建的是Tab，对书签同样生效
                "        T   打开一个文件，但是光标仍然留在 NERDTree，创建的是 Tab，对书签同样生效
                "        i   水平分割创建文件的窗口，创建的是 buffer
                "        gi  水平分割创建文件的窗口，但是光标仍然留在 NERDTree
                "        s   垂直分割创建文件的窗口，创建的是 buffer
                "        gs  和 gi，go 类似
                "        x   收起当前打开的目录
                "        X   收起所有打开的目录
                "        e   以文件管理的方式打开选中的目录
                "        D   删除书签
                "        P   大写，跳转到当前根路径
                "        p   小写，跳转到光标所在的上一级路径
                "        K   跳转到第一个子路径
                "        J   跳转到最后一个子路径
                "        <C-j> 和 <C-k>: 在同级目录和文件间移动，忽略子目录和子文件
                "        C   将根路径设置为光标所在的目录
                "        u   设置上级目录为根路径
                "        U   设置上级目录为跟路径，但是维持原来目录打开的状态
                "        r   刷新光标所在的目录
                "        R   刷新当前根路径
                "        I   显示或者不显示隐藏文件
                "        f   打开和关闭文件过滤器
                "        q   关闭 NERDTree
                "        ?   快速帮助文档
                "        o   打开一个目录或者打开文件，创建的是 buffer，也可以用来打开书签
                "        go  打开一个文件，但是光标仍然留在 NERDTree，创建的是 buffer
                "        t   打开一个文件，创建的是Tab，对书签同样生效
                "        T   打开一个文件，但是光标仍然留在 NERDTree，创建的是 Tab，对书签同样生效
                "        i   水平分割创建文件的窗口，创建的是 buffer
                "        gi  水平分割创建文件的窗口，但是光标仍然留在 NERDTree
                "        s    垂直分割创建文件的窗口，创建的是 buffer
                "        gs  和 gi，go 类似
                "        x    收起当前打开的目录
                "        X    收起所有打开的目录
                "        e    以文件管理的方式打开选中的目录
                "        D    删除书签
                "        P    大写，跳转到当前根路径
                "        p    小写，跳转到光标所在的上一级路径
                "        K    跳转到第一个子路径
                "        J    跳转到最后一个子路径
                "        <C-j> 和 <C-k>: 在同级目录和文件间移动，忽略子目录和子文件
                "        C    将根路径设置为光标所在的目录
                "        u    设置上级目录为根路径
                "        U    设置上级目录为跟路径，但是维持原来目录打开的状态
                "        r    刷新光标所在的目录
                "        R    刷新当前根路径
                "        I    显示或者不显示隐藏文件
                "        f    打开和关闭文件过滤器
                "        q    关闭 NERDTree
                "        A    全屏显示 NERDTree，或者关闭全屏A: 全屏显示 NERDTree，或者关闭全屏

""""""""""""  在打开的各个文件共享 NERDTree 插件： vim-nerdtree-tabs
""""""""""""  前提：安装 nerdtree

"" " 关闭NERDTree快捷键
"" map <leader>t :NERDTreeToggle<CR>
"" " 显示行号
"" let NERDTreeShowLineNumbers=1
"" let NERDTreeAutoCenter=1
"" " 是否显示隐藏文件
"" let NERDTreeShowHidden=1
"" " 设置宽度
"" let NERDTreeWinSize=31
"" " 在终端启动vim时，共享NERDTree
"" let g:nerdtree_tabs_open_on_console_startup=1
"" " 忽略一下文件的显示
"" let NERDTreeIgnore=['\.pyc','\~$','\.swp']
"" " 显示书签列表
"" let NERDTreeShowBookmarks=1
""当NERDTree为剩下的唯一窗口时自动关闭
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
""修改树的显示图标
let g:NERDTreeDirArrowExpandable = '►'
let g:NERDTreeDirArrowCollapsible = '▼'
let NERDTreeAutoCenter=1
" 显示行号
let NERDTreeShowLineNumbers=1
" 是否显示隐藏文件
"let NERDTreeShowHidden=1
" 在终端启动vim时，共享NERDTree
let g:nerdtree_tabs_open_on_console_startup=1


""""""""""""  在 NERDTree 中显示 git 信息插件：nerdtree-git-plugin
""""""""""""  前提：安装 nerdtree

" let g:NERDTreeIndicatorMapCustom = {
"     \ "Modified"  : "*",
"     \ "Staged"    : "+",
"     \ "Untracked" : "#",
"     \ "Renamed"   : "->",
"     \ "Unmerged"  : "═",
"     \ "Deleted"   : "X",
"     \ "Dirty"     : "x",
"     \ "Clean"     : "v",
"     \ "Unknown"   : "?"
"     \ }


""""""""""""  项目管理插件 project
""""""""""""  前提：安装 project

""" 快捷键设置

""" 使用方法,在命令模式下 :Project        再 \C
                "  1、 打开vim后，敲入命令 :Project，可以看到project的列表（如果没初始化，则为空）
                "  2、 输入\C（斜杠+大写的C），会出现下面这些信息
                "         Enter the Name of the Entry: ProjectName （项目名称）
                "         Enter the Absolute Directory to Load:  ProjectPath （项目路径目录）
                "         Enter the CD parameter: . （“.”为当前目录）
                "         Enter the File Filter:  (符合条件的源文件，一般为空)
                "  
                "  常用命令或快捷键
                "
                "  \l      (列出所有当前层文件)    
                "  \L      (递归),按任何键停止
                "  \w      (关闭当前层文件)       
                "  \W      (递归)
                "  \g      (在项目当前层文件搜索)\G(递归)
                "  \r      关闭子文件夹并刷新当前文件夹下文件
                "  \R      递归打开文件夹并刷新所有文件
                "  s       关闭文件夹并创建，S递归打开文件夹并创建
                "  \s      将文件在水平打开多个窗口显示，打开或关闭文件夹列表
                "  \o      将文件在一个窗口打开，打开或关闭文件夹列表
                "  \v      在右窗口显示指针停留在project窗口的文件内容
                "  <space> 空格扩大project窗口的宽度，恢复宽度
                "  \i      显示文件或文件夹的设置参数，如filter="*"
                "  \I      显示文件或文件夹的绝对路径和参数
                "  \1 - \9，\f1-\f9，\F1-\F9执行指定命令，\0查询1-9命令，\f0查询f1-f9，F1-F9命令



""""""""""""  生成各类语言的tags 插件： ctags 
""""""""""""  作用：帮助程序员很容易地浏览源代码
" 安装：下载ctags.exe。在path环境变量中添加ctags.exe的路径，设置为系统全局变量。

""" 使用方法:
    " 同时按下win + R , 键入cmd，打开dos窗口，在所要看的源代码根目录下运行： ctags -R  ,生成tags文件



""""""""""""  列表 taglist
""""""""""""  前提：安装ctags并配置到系统变量里，vim插件taglist
" filetype   plugin   on 

" set tags=tags
" set autochdir                       " 自动设置目录为正在编辑的文件所在的目录
" 
" let Tlist_Ctags_Cmd='ctags'         "  因为我们放在环境变量里，所以可以直接执行
" let Tlist_Use_Right_Window=1        "  让窗口显示在右边，0的话就是显示在左边
" let Tlist_Show_One_File=0           "  让taglist可以同时展示多个文件的函数列表
" let Tlist_File_Fold_Auto_Close=1    "  非当前文件，函数列表折叠隐藏
" let Tlist_Exit_OnlyWindow=1         "  当taglist是最后一个分割窗口时，自动推出vim
" " 是否一直处理tags.1:处理;0:不处理      
" let Tlist_Process_File_Always=1     "  实时更新tags
" let Tlist_Inc_Winwidth=0

"set tags=tags  
"set tags+=./tags "add current directory's generated tags file  

let Tlist_Show_One_File=1             " taglist同时只展示1个文件的sysmbol列表，0 支持展示多个"  
let Tlist_Use_Right_Window=0          " 0的话就是显示在左边， 1 是右边"  
let Tlist_Exit_OnlyWindow=1           " 当taglist是最后一个窗口时，自动退出Vim"  
let Tlist_Process_File_Always=1       " 实时更新tags"
let Tlist_WinWidth = 24               " 设置taglist窗口的宽度

" 设置参数(taglist配置选项)
    "  Tlist_Ctags_Cmd                      "  用于指定你的Exuberant ctags程序的位置，如果它没在你PATH变量所定义的路径中，需要使用此选项设置一下
    "  Tlist_Show_One_File = 1              "  为1只展示1个文件的sysmbol列表。缺省为0,则显示多个文件中的tag
    "  Tlist_Sort_Type=name                 "  list以tag名字进行排序，缺省是按tag在文件中出现的顺序进行排序。按tag出现的范围（即所属的namespace或class）排序，已经加入taglist的TODO List，但尚未支持
    "  Tlist_Exit_OnlyWindow=１             " taglist窗口是最后一个窗口时退出VIM，设置
    "  Tlist_Use_Right_Window=１            " 1 则taglist窗口出现在右侧，。缺省显示在左侧
    "  Tlist_Show_Menu=１                   " 在gvim中显示taglist菜单，使用Tlist_Max_Submenu_Items和Tlist_Max_Tag_Length来控制菜单条目数和所显示tag名字的长度 
    "  Tlist_Use_SingleClick=１             " 1，则单击tag就跳转。缺省情况下，在双击一个tag时，才会跳到该tag定义的位置
    "  Tlist_Auto_Open=1                    " 在启动VIM后，自动打开taglist窗口
    "  Tlist_Close_On_Select=1              " 如果你希望在选择了tag后自动关闭taglist窗口
    "  Tlist_File_Fold_Auto_Close=１        " 可使taglist只显示当前文件tag，其它文件的tag都被折叠起来 
    "  Tlist_GainFocus_On_ToggleOpen=1      " 在使用:TlistToggle打开taglist窗口时，输入焦点在taglist窗口中
    "  Tlist_Process_File_Always=1          " taglist始终解析文件中的tag，不管taglist窗口有没有打开
    "  Tlist_Use_Horiz_Window=１            " 设置taglist窗口横向显示;Tlist_WinHeight和Tlist_WinWidth可以设置taglist窗口的高度和宽度。；
    "  map <silent> <leader>tl :TlistToogle<cr>  " 自定义快捷键，使用“,tl”键就可以打开/关闭taglist窗口：
    
""" 使用方法，同时按下win + R , 键入cmd，打开dos窗口，在所要看的源代码根目录下运行： ctags -R  （这里可以设置关联的文件类型：
    "    例如：ctags --languages=c --langmap=c:+.ec:+.h -R）
    "    注意：如果不能运行，可能是ctags.exe的路径没有设置，在path环境变量中添加ctags.exe的路径。
    "    在这个目录下会生成一个tags文件。
    "    打开源文件，键入:Tlist (再次键入时，关闭) 这时可以看到两个窗口(要改变窗口的位置，可以修改taglist.vim或是在_vimrc中修改)
    "    最常用的几个命令：
    "     可以用“:TlistOpen”打开taglist窗口，用“:TlistClose”关闭taglist窗口。或者使用“:TlistToggle”在打开和关闭间切换。
    "     :Tlist
    "     Ctrl + ]    " 把光标移到变量名或函数名上，然后按,直接跳到这个变量或函数定义的源文件中
    "     Ctrl+t      " 可以退回原来的地方
    "     Ctrl + o
    "     Ctrl + W W
    "     在taglist窗口中，可以使用下面的快捷键：
    "     <CR>                                   跳到光标下tag所定义的位置，用鼠标双击此tag功能也一样
    "     o                                      在一个新打开的窗口中显示光标下tag
    "     <Space>                                显示光标下tag的原型定义
    "     u                                      更新taglist窗口中的tag
    "     s                                      更改排序方式，在按名字排序和按出现顺序排序间切换
    "     x                                      taglist窗口放大和缩小，方便查看较长的tag
    "     +                                      打开一个折叠，同zo
    "     -                                      将tag折叠起来，同zc
    "     *                                      打开所有的折叠，同zR
    "     =                                      将所有tag折叠起来，同zM
    "     [[                                     跳到前一个文件
    "     ]]                                     跳到后一个文件
    "     q                                      关闭taglist窗口
    "     <F1>                                   显示帮助 
    "      rebuild_ctags                         -重建ctags索引    ctrl+t     ctrl+r      组合键
    "      navigate_to_definition                -跳转到函数定义   ctrl+t     ctrl+t
    "      jump_back                             -跳回             ctrl+t     ctrl+b
    "      jump_back to_last_modification        -跳转到上次修改处 ctrl+t     ctrl+m
    "      show_symbols                          -按函数索引查找   alt+s


""""""""""""  窗口管理插件 winmanager
""""""""""""  前提：winmanager

" let g:winManagerWindowLayout='FileExplorer|BufExplorer|TagList'   "  设置要管理的组件
""" 快捷键设置
" nmap <silent> <F10> :WMToggle<cr>
" nmap wmgr :WMToggle<cr>       " 是nomal模式的命令，不是Ex模式的，这个是设置快捷键

""" 使用方法
    "     wm           进入新增 删除 移动文件(夹)的操作面板
    "     CTRL-W h     跳转到左边的窗口
    "     CTRL-W j     跳转到下面的窗口
    "     CTRL-W k     跳转到上面的窗口
    "     CTRL-W l     跳转到右边的窗口
    "     CTRL-W t     跳转到最顶上的窗口
    "     CTRL-W b     跳转到最底下的窗口


""""""""""""  标签栏管理插件 tabBar
""""""""""""  前提：
" 修复版本：https://github.com/humiaozuzu/TabBar
" 1. vimdiff/Gvim/Macvim中不开启tab
" 2. 添加tab关闭功能(:Tbbd)
" 3. 在任何窗口中都可切换tab，不会在nerdTree中因为不小心切换后需要完全重开vim

let g:Tb_MaxSize = 2
let g:Tb_TabWrap = 1

""" 使用方法
    " 效果：在最上方标签栏显示打开的文件名字

""""""""""""  单词自动补全插件 word_complete
""""""""""""  前提：

" autocmd  BufEnter  *  call  DoWordComplete()                 " 自动加载补全模式

""" 使用方法
    "    Insert模式下在输入的时候自动补全单词，
    "       如果补全正确可以按Tab键接受，否则可以不管它继续输入
    "       或者按Ctrl-n，Ctrl-p切换补全。 
    "    注:输入三个字符后才开始补全。
    "    
    "    安装：拷贝文件到[你的gvim的安装目录]\vimfiles\plugin\
    "    
    "       激活补全模式
    "       :call DoWordComplete() 
    "       取消补全模式
    "       :call EndWordComplete()


""""""""""""  PHP语法自动检查插件  phpcheck.vim 
""""""""""""  前提：系统配置php环境配置了全局

" 配置php环境
"    如果你的phpbin所在目录不在系统的环境变量的话，可以指定phpbin的路径。大部分情况下是不用的配置的。
" let g:PHP_SYNTAX_CHECK_BIN = '/apps/php/bin/php'
" let g:PHP_SYNTAX_CHECK_BIN = 'C:/apps/php/bin/php'

""" 使用方法
    " 基本功能就是 在PHP文件保存时进行语法检查，有错误会提示出来，没错误不会有任何提示。 

""""""""""""  文件系统管理插件： CtrlP
""""""""""""  前提：



let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP' 
let g:ctrlp_working_path_mode = 'ra'
    " ‘c’--当前文件的目录
    " ‘a’--当前文件的目录，除非它是cwd的子目录
    " ‘r’--最近的当前文件，包含了这些 .git、.hg、.svn、.bzr、_darcs文件或目录
    " ‘w’--和r类似，以cwd开始搜索，而非以当前文件目录

""" 使用方法
    " 1、从文件系统，从打开的缓冲区以及最近使用过的文件里。
    "  :CtrlP                       查找文件
    "  :CtrlP [starting-directory]  完全模糊路径在vim寻找文件，缓冲区，最近用过的文件，标签等等
    "  :CtrlPMixed                  同时搜索文件夹，缓冲区，以及最近试用过的文件
    "
    " 2、一旦ctrlp打开了：
    "     按F5清除当前目录的缓冲以便获取新文件，移除被删掉的文件以及应用新的忽略选项。
    "     按<ctrl-f>和<ctrl-b>  在两种模式间循环
    "     按<ctrl-d>            切换到仅搜索文件名而不是完整路径
    "     按<ctrl-r>            切换到正则表达式模式
    "     <ctrl-j>，<ctrl-k>或者方向键在结果列表移动
    "     <ctrl-t>或<ctrl-v>,<ctrl-x>以新表，新窗口分割方式打开选定项
    "     <ctrl-n>,<ctrl-p>    在历史记录里选择上一项或下一项
    "     <ctrl-y>             来创建新文件和它的父目录
    "     <ctrl-z>             来标记（取消标记）多个文件，使用<ctrl-o>来打开它们
    "     两个或多个符号..     来起单层或多层目录树
    "     :25                  会跳转到打开文件的第25行，
    "     :diffthis            当打开多个文件的时候使用，会在最开始的4个文件里执行。

    " 3、查看帮助文档
    "  :help ctrlp-commands
    "  :help ctrlp-extensions

""""""""""""  markdown语法高亮插件:vim-markdown-master
""""""""""""  前提：

""" 使用方法
    "
    " markdown 语法
    "    
    "     标题
    "        # 一级标题
    "        ## 二级标题
    "        ### 三级标题
    "        #### 四级标题
    "        ##### 五级标题
    "        ###### 六级标题
    "    
    "     换行和分段
    "        换行：只需在行末加两个空格键和一个回车键即可换行。快捷键：control + 回车键
    "        分段：段落之间空一行即可。
    "     
    "     文本样式
    "        ** 加粗 **
    "        * 斜体 *
    "        ~~ 删除线 ~~
    "        ` 底纹 `
    "     
    "     列表
    "        在Markdown 下，无序列表直接在文字前加 「 - 」 或者 「 * 」 即可，有序列表则直接在文字前加 「1.」「2.」「3.」 。符号要和文字之间加上一个字符的空格。
    "        无序列表： 在文本前加 「 * 」 即可生成一个无序列表。快捷键：control + L （只能生成列表，不能生成子列表）
    "                   在 「 * 」 前加两个空格键或者一个 tab 键就可以产生一个子列表。
    "        有序列表： 在文本前加 「字母.」 或 「数字.」 即可生成一个有序列表。
    "          注意，当你第一个序号使用什么作为标记的，那么同级别的列表就会自动使用其作为标记。
    "     
    "     引用
    "         只要在文本内容之前加 「 > （大于号）」 即可将文本变成引用文本。
    "     
    "     水平线
    "        三个「 - 」或「 * 」都可以画出一条水平分割线
    "    
    "     代码框
    "        两对「 ``` 」包裹
    "        代码前加四个空格键
    "        代码前加一个 tab 键
    "        <pre><code>这是一个代码区块。</code></pre>
    "    
    "     图片与链接
    "        插入链接与插入图片的语法很像，区别在一个 !号
    "        图片为：![]()
    "        链接为：[]()
    "     
    "     脚注
    "        脚注总是成对出现的，「 [^1] 」作为标记，可以点击跳至末尾注解。「 [^1]: 」填写注解，不论写在什么位置，都会出现在文章的末尾。
    "     
    "     注释
    "        注释是给自己看的，预览时也不会出现，当然发布出去别人也不会看见。
    "        <!--  注释内容 -->
    "     
    "     首行缩进
    "        关于首行缩进，网上争议很多，而技术本身并没有错，不是吗？
    "        在输入法的「全角」模式下，输入两个空格键即可。
    "     
    "     引号
    "        在网页上写文章建议使用直角引号『「」』。
    "    
    "     表格
    "        在 Markdown 下制作表格，是非常非常麻烦的一件事——你必须画出来！
    "        方式一
    "          行1 | 行2 | 行3 
    "         -----|-----|----
    "         格11 |格12 | 格13
    "         格21 | 格22| 格23
    "        方式二
    "         | 行1 | 行2 | 行3 |
    "         |-----|-----|-----|
    "         |格11 | 格12| 格13|
    "         |格21 | 格22| 格23|
    "        方式三
    "          行1 | 行2 | 行3 
    "         :-----|:-----|:-----
    "         格11 | 格12| 格13
    "         格21 | 格22| 格23

""""""""""""  编写html的超级利器emmet插件:emmet
""""""""""""  前提：     下载：https://github.com/mattn/emmet-vim
" let g:user_emmet_mode='n'    "  只启用普通模式功能       only enable normal mode functions.
" let g:user_emmet_mode='inv'  "  启用所有功能，等于       enable all functions, which is equal to
let g:user_emmet_mode='a'    "  在所有模式下启用所有功能 enable all function in all mode.

" 只为html / css启用
let g:user_emmet_install_global = 0
autocmd FileType html,css EmmetInstall

" let g:user_emmet_leader_key='<C-Z>'  " 重新定义触发键( 默认的<C-Y>)

""" 使用：
    " Emmet的基本用法：先写简写形式，然后用"<Ctrl+y>,"将其转成HTML代码
    " 基本规则：
    " （1） E 代表HTML标签
    " （2） E#id 代表标签E有id属性
    " （3） E.class 代表E有class属性
    " （4） E[attr=foo] 代表某个特定属性
    " （5） E{info} 代表标签E包含的内容是info
    " （6） E>N 代表N是E的子元素
    " （7） E+N 代表N是E的同级元素
    " （8） E^N 代表N是E的上级元素
    "  案例1：
    "      vim index.html 新建一个文件
    "      输入模式下输入  html:5
    "      然后按住Ctrl+y 放开再单独按","结果就插入基本的HTML代码
    "                     html:5 or ! for an HTML5 doctype
    "                     html:xt for an XHTML transitional doctype
    "                     html:4s for an HTML4 strict doctype
    "  案例2：
    "      输入模式下输入 p#foo
    "      然后按住Ctrl+y 放开再单独按","(逗号) 结果就插入基本的HTML代码 <p id="foo"></p>
    "  案例3：
    "      输入模式下输入 p.bar#foo
    "      然后按住Ctrl+y 放开再单独按","(逗号) 结果就插入基本的HTML代码 <p class="bar" id="foo"></p>
    "  案例4：
    "      输入模式下输入 h1{foo}
    "      然后按住Ctrl+y 放开再单独按","(逗号) 结果就插入基本的HTML代码 <h1>foo</h1>
    "  案例5：
    "      输入模式下输入 a[href=#]
    "      然后按住Ctrl+y 放开再单独按","(逗号) 结果就插入基本的HTML代码 <a href="#"></a>
    "  案例6：
    "      输入模式下输入 h1+h2
    "      然后按住Ctrl+y 放开再单独按","(逗号)结果就插入基本的HTML代码
    "                                                     <h1><h1>
    "                                                     <h2><h2>
    "  案例7：
    "      输入模式下输入 (.foo>h1)+(.bar>h2)
    "      然后按住Ctrl+y 放开再单独按","(逗号)结果就插入基本的HTML代码
    "                                                     <div class="foo">
    "                                                       <h1></h1>
    "                                                     </div>
    "                                                     <div class="bar">
    "                                                       <h2></h2>
    "                                                     </div>
    "  案例8：
    "      输入模式下输入 .ul>li*3
    "      然后按住Ctrl+y 放开再单独按","(逗号)结果就插入基本的HTML代码
    "                                                     <ul>
    "                                                       <li></li>
    "                                                       <li></li>
    "                                                       <li></li>
    "                                                     </ul>
    "  案例9：
    "      输入模式下输入 .item
    "      然后按住Ctrl+y 放开再单独按","(逗号)结果就插入基本的HTML代码
    "                                 若父级是<div>，则插入    <div class="item"></div>
    "                                 若父级是<ul>， 则插入    <li class="item"></li>
    "                                 注：   li for ul and ol
    "                                        tr for table, tbody, thead and tfoot
    "                                        td for tr
    "                                        option for select and optgroup
    "  具体教程参考：
    "      http://coding.smashingmagazine.com/2013/03/26/goodbye-zen-coding-hello-emmet/
    "      http://www.360doc.com/content/16/0923/15/10087950_593063597.shtml


""""""""""""  修改内容和git原始内容的对比插件:Fugitive 
""""""""""""  前提：安装 https://github.com/tpope/vim-fugitive.git

"" 作用：看修改内容和原始内容的对比。

"" 以往看这种对比内容，要先退出或在 Vim 中 :sh，然后在 Shell 里 git diff 看传统格式的 differ，或者使用 git difftool 命令查看 vimdiff 可视化后的 differ。
"" 安装完成后，退出 Vim 重新打开Git工作区正在编辑的文件，命令 :Gdiff， 就可以方便的查看本次修改和仓库里代码的改动了。

""""""""""""  显示 git 管理的项目文件变更状态插件:nerdtree-git-plugin插件 
""""""""""""  前提：安装 nerdtree

" 在各diff之间跳转,自定义mapping
" nmap ]h <Plug>GitGutterNextHunk
" nmap [h <Plug>GitGutterPrevHunk

" let g:NERDTreeShowIgnoredStatus = 1
"" 注该插件bug暂未使用

""""""""""""  显示 显示git的文件diff状态插件:vim-gitgutter
""""""""""""  前提：系统安装了git

""" 使用：
    "  波浪线表示该行相比HEAD修改过，
    "  红色的减号表示这里删除了一行，
    "  绿色的+号表示这些行都是新增的

    " Gitgutter还支持在每个diff区块之间跳转（像图中就分了3块）。默认快捷键为[c和]c。可以非常方便地在各diff之间跳转了。
    " 当然必须可以自定义mapping：
    " nmap ]h <Plug>GitGutterNextHunk
    " nmap [h <Plug>GitGutterPrevHunk

    " Gitgutter不仅能显示这些git diff，还能暂存<Leader>hs和回退<Leader>hr修改。
    " 同样支持自定义mapping： <div class=’bogus-wrapper’>
    " let g:gitgutter_diff_args = '-w'

""""""""""""  文件夹对比插件:vim-dirdiff插件 
""""""""""""  前提：
"" 插件下载地址
"" [DirDiff](https://www.vim.org/scripts/script.php?script_id=102 )
"" 或
"" [will133/vim-dirdiff](https://github.com/will133/vim-dirdiff)
""" 使用：
    " :DirDiff <dir1> <dir2>
    
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
"" 自定义函数
""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

""""""""""""  自定义函数1: 切换工作空间
""""""""""""  

  function Cw(dir)
     execute ":cd  ".a:dir
  endfunction

"" 配置例子1：
"" let g:WorkDir = "~/tmp"  "相对路径写法  意为当前用户下的tmp目录
"" call Cw(WorkDir)
"" 配置例子2：
"" let g:MyWorkSpace = "C:/MyWorkSpace"
"" let g:CodeStudio = g:MyWorkSpace."/GitHub_Prj/"
"" call Cw(CodeStudio)

"" 实际配置
"let g:WorkDir = "~/Desktop/tmp" 
"call Cw(WorkDir)

"  let g:prj_1 = "~/Desktop/tmp/prj_1" 
"  let g:prj_2 = "~/Desktop/tmp/prj_2"

"" 用法命令模式下输入 ：call Cw(prj_2) 快速切换到项目空间(前提是在配置里定义了prj_2的路径)


""""""""""""  自定义函数2: 快速输入时间
""""""""""""  

" --实现方案一, 然后在编辑文件时，在输入模式下，输入 xdate xdatetime 后按回车，便可输入以下格式的时间：
iab xdate <c-r>=strftime("20%y.%m.%d")<cr> 
iab xdatetime <c-r>=strftime("20%y/%m/%d %H:%M:%S")<cr> 
iab xdatetime1 <c-r>=strftime("20%y/%m/%d %H:%M:%S %p (%A) %z")<cr> 

" --实现方案二, linux系统的命令模式下 :r !date 


""""""""""""  自定义函数3: 获取当前目录路径
""""""""""""  

" 将当前编辑的文件完全路径拷贝到系统剪贴板 --实现方案一
" function GetCurFilePath()
"     let cur_dir=getcwd()
"     let dir_filename=cur_dir."\\"
"     echo dir_filename.expand("%:r")."         done"
"     call setreg('+',dir_filename)
" endfunction

" 将当前编辑的文件完全路径拷贝到系统剪贴板  --实现方案二
function GetCurFilePath()
    let cur_dir=getcwd()
    let cur_file_name=getreg('%')
    let dir_filename=cur_dir."\\".cur_file_name
    echo dir_filename."         done"
    call setreg('+',dir_filename)
endfunction

"" 快捷键设置
nnoremap <silent> <F9> : call GetCurFilePath()<cr>

" 用法命令模式下输入 ：call GetCurFilePath() 快速获取当前路径



""""""""""""  自定义函数4:设置只有在是PHP文件时，才启用PHP补全 函数
""""""""""""  

" 配置步骤：首先下载PHP函数列表文件，将该文件保存在目录 /etc/vim/下:

" 设置php函数列表文件地址（前提将php_funclist.txt文件放在 ~/php_funclist.txt ）

" 设置在针对所有文件都启用了PHP补全
" set dictionary-=/etc/vim/php_funclist.txt  dictionary+=/etc/vim/php_funclist.txt
" set dictionary-='C:/Program Files (x86)/Vim/vimfiles/php_funclist.txt'  dictionary+='C:/Program Files (x86)/Vim/vimfiles/php_funclist.txt'

" 设置只有在是PHP文件时，才启用PHP补全
au FileType php call PHPFuncList()

function PHPFuncList()
    set dictionary-=~/.vim/completion_dictionary/php_funclist.txt dictionary+=~/.vim/completion_dictionary/php_funclist.txt
    set complete-=k complete+=k
endfunction

""" 使用方法
    " 进入vim编辑的时候，按下 (control+p)或者 ，就可以出现php的自动补全。

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
"" 主题风格设置
""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

color molokai
" color solarized
" color vividchalk
" color colorsbox-faff
" color colorsbox-greenish
" color colorsbox-material
" color colorsbox-stblue
" color colorsbox-stbright
" color colorsbox-steighties
" color colorsbox-stnight
" color desertEx
" color gruvbox
" color gocode                     " 主题色 黑白
" color elmindreda                   " 主题色 蓝字
" color phosphor                   " 主题色 绿字

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
""
"" 初始化时，自动执行命令
""
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufNewFile * normal G                    " 自动将光标定位到末尾
" autocmd vimenter * Project                     " 打开 Project
autocmd vimenter * NERDTree                      " 自动打开 NERDTree
autocmd BufEnter  *  call  DoWordComplete()     " 自动加载补全模式

"=============================================================================="
" Vim 操作总结"  help  HELP
""-----------------------------------------------------------------------------"
"" 一、文件夹操作
""
""     1、查看当前所在目录
""       :pwd
""
""     2、文件夹切换（目录路径切换）
""       ：cd 路径
""
""     3、新建文件夹
""       :!mkdir  文件夹名
""       或
""       ：!MD 文件夹名
""
""     4、复制文件
""       a、将一份或多份文件复制到另一个位置
""          Windows 版： copy命令 :!  COPY source_file  "destination_dir"  /S
""          Linux 版： copy命令   :! cp source_file  destination_dir
""        
""       b、复制文件和目录树
""          Windows 版： xcopy命令 :! XCOPY "source_dir" "destination_dir" /S
""          Linux 版：   cp命令    :! cp -r source_dir destination_dir
""
""
""-----------------------------------------------------------------------------"
"" 二、文件操作
""
""     1、查看打开的文件列表
""       :ls         显示当前buffer情况
""       :Ex         开启目录浏览器，可以浏览当前目录下的所有文件，并可以选择
""       :Sex        水平分割当前窗口，并在一个窗口中开启目录浏览器
""                   注解 :ls显示的当前buffer情况第一栏存放缓冲区号。你可以利用它来编辑文件，而不用键入文件名
""                            u      列表外缓冲区 |unlisted-buffer|。
""                            %      当前缓冲区。
""                            #      轮换缓冲区。
""                            a      激活缓冲区，缓冲区被加载且显示。
""                            h      隐藏缓冲区，缓冲区被加载但不显示。
""                            =      只读缓冲区。
""                            -      不可改缓冲区， 'modifiable' 选项不置位。
""                            +      已修改缓冲区。
""
""     2、新建文件
""       :new+窗口名(保存后就是文件名)  
""
""     3、打开文件
""       :o           在已有窗口中打开文件、目录或书签，并跳到该窗口
""       :go          在已有窗口 中打开文件、目录或书签，但不跳到该窗口
""       :t           在新 Tab 中打开选中文件/书签，并跳到新 Tab
""       :T           在新 Tab 中打开选中文件/书签，但不跳到新 Tab
""       :e file      可以再打开一个文件，并且此时vim里会显示出file文件的内容
""       :i split     一个新窗口上下切割打开选中文件，并跳到该窗口
""       :gi split    一个新窗口上下切割打开选中文件，但不跳到该窗口
""       :s vsplit    一个新窗口左右切割打开选中文件，并跳到该窗口
""       :gs vsplit   一个新 窗口打开选中文件，但不跳到该窗口
""        注：对于用(v)split在多个窗格中打开的文件，这种方法只会在当前窗格中切换不同的文件。
""
""     4、文件间切换
""       :bn  或 ctrl+6       下一个文件
""       :bp                  上一个文件
""       :b1~n                切换至第n个文件
""       :n                   跳至下一个文件，也可以直接指定要跳的文件，如:n c，可以直接跳到c文件
""       :e#                  回到刚才编辑的文件
""
""     6、编辑缓冲区
""       :buffer 2           通过指定其缓冲区号来编辑一个缓冲区
""       :buffer 文件名      通过指定文件名用文件名或其部分来编辑一个缓冲区
""       :sbuffer 3          在新窗口中打开一个缓冲区，方法也适用于文件名
""       :bnext              编辑下一个缓冲区
""       :bprevious          编辑前一个缓冲区
""       :bfirst             编辑第一个缓冲区
""       :blast              编辑最后一个缓冲区
""       :bdelete 3          从缓冲区列表上删除一个缓冲区
""                           备注:
""                               即使用 ":bdelete" 命令删除了缓冲区以后，Vim 依然记得它。
""                               但这个缓冲区实际上成了 "列表外" 缓冲区，它不再出现在 ":buffers" 命令所报告的列表中。
""                               不过 ":buffers!" 命令仍会列出 "列表外" 缓冲区 (没错，Vim 无所不能)。
""                               要让 Vim 彻底忘记一个缓冲区，用 ":bwipe" 命令。另见 'buflisted' 选项
""      7、文件编辑
""       a、模式切换
""         Esc        退出切换到命令模式
""         ：         在命令模式输入 ： 即可进入 末行模式
""         v          在命令模式输入 v  即可进入 可视化模式,然后按键盘左右键或h,l键,可实现文本的选择 ( 按字符选择 )
""         V          在命令模式输入 V  即可进入 可视化模式,然后按键盘左右键或h,l键,可实现文本的选择 ( 按行选择 )
""         CTRL＋v    在命令模式输入 CTRL＋v  即可 进入可视化模式,然后按键盘左右键或h,l键,可实现文本的选择 ( 按行选择 )
""         i          在命令模式输入 i 即可进入 插入模式 ,在光标所在字符前开始插入
""         a          在命令模式输入 a 即可进入 插入模式 ,在光标所在字符后开始插入
""         o          在命令模式输入 o 即可进入 插入模式 ,在光标所在行的下面另起一新行插入
""         s          在命令模式输入 s 即可进入 插入模式 ,删除光标所在的字符并开始插入
""         I          在命令模式输入 I 即可进入 插入模式 ,在光标所在行的行首开始插入 如果行首有空格则在空格之后插入
""         A          在命令模式输入 A 即可进入 插入模式 ,在光标所在你行的行尾开始插入
""         O          在命令模式输入 O 即可进入 插入模式 ,在光标所在行的上面另起一行开始插入
""         S          在命令模式输入 S 即可进入 插入模式 ,删除光标所在行并开始插入
""
""       b、光标移动
""         H                            光标移动到当前显示窗口首行
""         M                            光标移动到当前显示窗口中间
""         L                            光标移动到当前显示窗口最后一行
""         W                            移动到下一个单词词首
""         w                            移动到下一个单词词首
""         2w                           移动2次w
""         2W                           移动2次w
""         e                            移到下一个单词词尾
""         5e                           重复5次e
""         b                            前移一个单词词首
""         Home                         光标到行首
""         End                          光标到行尾
""         Page Up                      上翻页
""         Page Down                    下翻页
""         Delect                       删除光标位置的字符
""
""       c、复制黏贴
""         (a)、基础操作
""           yy                          将命令复制当前整行的内容到vi缓冲区
""           yw                          将当前单词复制到缓冲区
""           y1                          将光标处的一个字符复制到缓冲区
""           p                           将缓冲区的信息粘贴到光标的背面
""           yy                          命令复制当前整行的内容到vi缓冲区
""           yw                          复制当前光标所在位置到单词尾字符的内容到vi缓存区，相当于复制一个单词
""           y$                          复制光标所在位置到行尾内容到缓存区
""           y^                          复制光标所在位置到行首内容到缓存区
""           :行号1 , 行号2 copy 行号3   将行号1到行号2的内容复制到行号3地址行的背面。
""           :行号1 , 行号2 move 行号3   将行号1到行号2的文本内容移动到行号3地址行的背面。
""           
""         （b）、使用替换命令
""           :% s/^/#/g                  在全部内容的行首添加 # 号
""           :1,10 s/^/#/g               在1~10 行首添加 # 号
""
""         （c)、复制到vim的寄存器里
""         "a3yy   将当前光标的以下3行复制到寄存器a里
""         "ap     将当前寄存器a的内容复制到当前光标的下一行
""         
""         :reg    查看寄存器内容
""         :reg    寄存器名字  只查看该寄存器的内容
""         
""         Vim 中的复制、删除的内容都会被存放到默认（未命名）寄存器中，之后可以通过粘贴操作读取默认寄存器中的内容。寄存器是完成这一过程的中转站，Vim 支持的寄存器非常多，其中常用的有 a-zA-Z0-9+“。其中：
""           ● 0-9：表示数字寄存器，是 Vim 用来保存最近复制、删除等操作的内容，其中 0 号寄存器保存的是最近一次的操作内容。
""         a-zA-Z：表示用户寄存器，Vim 不会读写这部分寄存器
""           ● "（单个双引号）： 未命名的寄存器，是 Vim 的默认寄存器，例如删除、复制等操作的内容都会被保存到这里。
""           ● +：               剪切板寄存器，关联系统剪切板，保存在这个寄存器中的内容可以被系统其他程序访问，也可以通过这个寄存器访问其他程序保存到剪切板中的内容。
""         
""       d、剪切/移动
""        c                               剪切选中的文本之后进入插入模式
""        :开始行, 结束行 move 目标行 
""                                       例 :m  .+1   下移当前行
""                                          :m  .-2   上移当前行
""                                          :5 move 2 
""                                          :2, 9 move 13
""       d、删除
""        c       剪切选中的文本之后进入插入模式
""        dw      删除光标之后的单词
""        de      删除到本单词末尾
""        dE      删除到本单词末尾包括标点
""        db      删除单一个单词
""
""       b、列操作/块操作
""        （1）、进入vi/vim编辑器，按CTRL+V进入可视化模式（VISUAL BLOCK）
""        （2）、移动光标上移或者下移，选中多行的开头，
""        （3）、选择完毕后，按大写的的I键（SHIFT+i），此时下方会提示进入“insert”模式，输入你要插入的注释符，例如#，
""        （4）、最后按ESC键（按两次），你就会发现每行的选定的区域出现插入的内容
""         注： control+v,启用块可视模式，之后移动鼠标，可以选中某一个矩形块，对于有规律的表格可以用这个功能。可以在这个块的四角进行移动光标，方法就是按o，O来切换四个顶点。
""             在windows系统中 control+v被系统占用了，所以改为control+q完成相同的功能。
""
""       e、搜索
""        /pattern（关键字）     向后搜索字符串pattern
""        ?pattern（关键字）     向前搜索字符串pattern
""        grep 关键字
""        注：按n和N查询下/上一处
""
""       f、搜索及替换
""                             搜索替换的范围。如果没有指定范围，则只在当前行进行搜索替换
""         :%s/from/to/        就是在全文查找from并替换为to。 
""         
""         :1,50s/from/to/     表示在第1行和第50行之间（包括1和50行）进行搜索和替换
""
""         :45s/from/to/       表示仅仅在第45行进行搜索和替换。而"1,$"行号范围和“%“是等价的
""
""       f、撤销/重做
""         u        命令取消最近一次的操作，可以使用多次来恢复原有的操作
""         U        取消所有操作
""         Ctrl+R   可以恢复对使用u命令的操作
""
""       g、注释
""         :20,30 s/^/#/g           第20到30行用 # 注释掉。
""         :20,30 s/^#//g           第20到30行取消注释
""
""         :4,10 s/^[^I ]\+//       去掉行首的空白字符
""
""         :.,30 s/^/#/g            用 . 表示当前行
""
""         1) F9:插入块注释
""           用法：命令模式下，按v键，选择要注释的部分，按下F9插入块注释,即 /*内容*/
""         2) F10:插入条件编译注释
""           用法：命令模式下，按v键，选择要注释的部分，按下F9插入编译注释，即#if 0 内容#endif
""         3) F11:自动在光标当前位置插入日期
""           用法：命令模式下，按F11
""         4) F12:添加函数头注释
""           用法：命令模式下，在函数的第一行按下F12
""
""       h、恢复文件
""          O        只读打开，不改变文件内容
""          E        继续编辑文件，不恢复.swp文件保存的内容
""          R        将恢复上次编辑以后未保存文件内容
""          Q        退出vim
""          D        删除.swp文件
""          vim －r  文件名来恢复未保存的内容
""
""       i、对比文件
""          方式一：
""              step1: 执行vim A/file1
""              step2: 在normal模式下输入:vertical diffsplit B/file1
""          方式二：
""              vimdiff A/file1 B/file1
""          方式三：
""              vim -d A/file1 B/file2
""          方式四：新标签比较文件diff
""              step1: 在normal模式下执行:tabnew A/file2
""              step2: 在normal模式下执行:vertical diffsplit B/file1
""
""
""-----------------------------------------------------------------------------"
"" 三、窗口操作
""
""     1、当前窗格/内容操作
""      :tabs  查看当前页签包含的窗口
""
""     2、窗格切割操作（创建或打开）
""       a、上下切割窗口
""        :new+窗口名/文件名(保存后就是文件名) 
""        :split+窗口名/文件名，也可以简写为:sp+窗口名
""
""       b、左右切割窗口名
""        :vsplit+窗口名，也可以简写为：vsp+窗口名
""
""     3、窗口大小调整
""       a、纵向调整
""        :ctrl+w + 纵向扩大（行数增加）
""        :ctrl+w - 纵向缩小 （行数减少）
""        :res(ize) num  例如：:res 5，显示行数调整为5行
""        :res(ize)+num 把当前窗口高度增加num行
""        :res(ize)-num 把当前窗口高度减少num行
""
""       b、横向调整
""        :vertical res(ize) num 例如：:vertical res 5，显示列数调整为5,即、指定当前窗口为5列
""        :vertical res(ize)+num 把当前窗口增加num列
""        :vertical res(ize)-num 把当前窗口减少num列
""
""     4、窗口关闭
""        :q!  或 x 或 :close  可以用：q!，也可以使用：close，最后一个窗口不能使用close关闭。使用close只是暂时关闭窗口，其内容还在缓存中，只有使用q!、w!或x才能真能退出。
""        :tabc 关闭当前窗口
""        :tabo 关闭所有窗口
""
""     5、窗口移动（非光标）
""        ctrl+w+R           向右或向下调换位置
""        ctrl+w+x           光标最近两个窗口位置互换
""        Ctrl+w+            方向键——切换到前／下／上／后一个窗格
""        Ctrl+w+h/j/k/l     ——同上
""        Ctrl+ww            ——依次向后切换到下一个窗格中
""
""     6、折叠
""       a、折叠模式设置
""         （a）、indent折叠方式（就是以缩进进行折叠）indent方式，vim会自动利用缩进进行折叠，我们可以使用现成的折叠成果．以大括号进行折叠
""           :set foldmethod=indent  设置折叠模式在.vimrc文件中添加设置或执行
""          
""         （b）、marker 折叠方式
""           :set fdm=marker   命令来设置成marker折叠方式。在.vimrc文件中添加设置，可以使得每次打开vi 都启动折叠方式。如添加：set fdm=syntax。
""     
""       b. 折叠打开与折合
""        选取了折叠方式后，我们就可以对某些代码实施我们需要的折叠了。
""        如果使用了indent方式，vim会自动的对大括号的中间部分进行折叠，我们可以直接使用这些现成的折叠成果。
""        indent 对应的折叠代码有：
""        zm   关闭折叠
""        zM   关闭所有
""        zi   打开关闭折叠
""        zc   折叠
""        zC   对所在范围内所有嵌套的折叠点进行折叠
""        zo   展开折叠
""        zO   对所在范围内所有嵌套的折叠点展开
""        [z   到当前打开的折叠的开始处。
""        ]z   到当前打开的折叠的末尾处。
""        zj   向下移动。到达下一个折叠的开始处。关闭的折叠也被计入。
""        zk   向上移动到前一折叠的结束处。关闭的折叠也被计入。
""           使用时在大括号中间输入以上命令。
""           当使用marker方式时，需要用标计来标识代码的折叠，系统默认是{{{和}}}，最好不要改动之：）
""           可以使用下面的命令来创建和删除折叠：
""        zf      创建折叠，比如在marker方式下：
""                           zf56G，创建从当前行起到56行的代码折叠；
""                           10zf或10zf+或zf10↓，创建从当前行起到后10行的代码折叠。
""                           10zf-或zf10↑，创建从当前行起到之前10行的代码折叠。
""                           在括号处zf%，创建从当前行起到对应的匹配的括号上去（（），{}，[]，等）。
""        zd      删除 (delete) 在光标下的折叠。仅当 'foldmethod' 设为 "manual" 或 "marker" 时有效。
""        zD     循环删除 (Delete) 光标下的折叠，即嵌套删除折叠。
""                  仅当 'foldmethod' 设为 "manual" 或 "marker" 时有效。
""        zE     除去 (Eliminate) 窗口里“所有”的折叠。
""                  仅当 'foldmethod' 设为 "manual" 或 "marker" 时有效。
""
""-----------------------------------------------------------------------------"
"" 四、标签页操作
""
""     1、标签页新建或打开
""      :tabnew [++opt选项] ［＋cmd］ 文件    建立对指定文件新的tab
""      :tabe(dit) thatfile                   在一个窗口中打开"thatfile"，该窗口占据着整个的Vim显示区域
""      :tab split/new                        新建一个拥有一个窗口的页签。
""      :tabf                                 允许你在当前目录搜索文件，并在新标签页中打开。比如:tabf img.*。此命令只能打开一个文件. Vim默认最多只能打开10个标签页。你可以用set tabpagemax=15改变这个限制。

""     2、标签页列表查看
""      :tabs                                 查看当前页签包含的窗口（显示已打开标签页的列表，并用“>”标识出当前页面，用“+”标识出已更改的页面。）
""
""     3、标签页切换
""      gt                                    在不同的页签间切换。
""      3gt                                   切到从左到右第三个页签
""      :tabp                                 前一个 tab
""      :tabn                                 后一个 tab
""      :tablast                              移动到最后一个标签页。
""      标准模式下：
""      gT                                    前一个 tab
""      gt                                    后一个 tab
""      MacVim 还可以借助快捷键来完成 tab 的关闭、切换
""      cmd+w                                 关闭当前的 tab
""      cmd+{                                 前一个 tab
""      cmd+}                                 后一个 tab
""
""     4、移动标签页
""      :tabm [次序]                  移动当前文件的标签页次序。比如:tabm 1将把当前标签页移动到第2的位置。如:tabm不指定参数将被移动到最后。
""
""     5、配置标签页
""      :set showtabline=[1,2,3]      标签页在窗口上方显示标签栏。=0完全不显示标签栏，=1只有用户新建时才显示，=2总是显示标签栏。
""
""     7、多标签页命令
""      :tabdo <命令>                 同时在多个标签页中执行命令。比如:tabdo %s/food/drink/g 命令把当前多个标签页文件中的“food”都替换成“drink”。
""
""     8、标签页关闭
""      :tabc[lose][!]                关闭当前标签页。
""      :tabc                         关闭当前的 tab
""      :tabo                         关闭所有其他的 tab
""
""     9、帮助
""      :help tab-page-intro          获得关于标签页使用的更多信息。
""
""
""-----------------------------------------------------------------------------"
"" 五、Vim和系统命令窗口切换操作
""
""     1、vim与shell切换
""     :shell   可以在不关闭vi的情况下切换到shell命令行
""     exit     从shell回到vim
""     :!       命令  暂时离开vim运行命令
""
"" 六、其他
""     [ESC]:sort r /【.\+】/
""
""-----------------------------------------------------------------------------"
"" 附：vim的 window 和 Linux 的区别    
"" -----------------------------------------------------------------------------
""                    |                          区       别 
"" -----------------------------------------------------------------------------
""      系统          |        windows        |        Linux
"" -----------------------------------------------------------------------------
""      可视块        |        ctrl+q         |       crtl+v
""                    | 需要按住shift才能     |
""                    |        选择块         |
"" -----------------------------------------------------------------------------
"" 注释：由于windows下编程习惯了保存就ctrl+s，在vim下ctrl+s整个putty终端就死了，
""       原来ctrl+s在LINUX里是锁定屏幕的快捷键，解锁ctrl+q就可以了

