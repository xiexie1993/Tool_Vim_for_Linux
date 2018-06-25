# Vim 编辑器（Linux） 安装搭建自述文件

## 一、概述


### 1、 目的阐述

+  为搭建windows的Vim编辑器的依据与指导。

### 2、 读者对象

+  有意向使用Vim的读者；

### 3、 注意事项

+  该文档采用 markdown 编写规范，建议使用markdownPad查看和修改

## 二、安装步骤

#### 1、 目录结构

~~~

./          
├── .vimrc                                     用户自定义配置文件（内含有使用说明）
├── .vim.zip                                   插件包
├── Markdown-Preview-Plus-Dz特别版_v104.crx    chrome核心的浏览器的Markdown阅读插件
├── Markdown-Preview-Plus_v0.6.5.crx           chrome核心的浏览器的Markdown阅读插件
└── README.md                                  自述文件（部署到生成环境后删除）

~~~


#### 2、 运行环境

+ Linux系统

#### 3、 安装步骤

+ a、安装vim
    * CentOS 执行： sudo yum -y install vim
    * Ubuntu 执行： sudo apt-get install vim

+ b、进行配置 在当前账户的根目录下（如：CentOS 的 /[用户名]/home 或 CentOS 的 /root）下建立.vim 文件夹

+ c、将.vim.zip解压到 当前用户根目录下（如：CentOS 的 /[用户名]/home 或 CentOS 的 /root ）

+ d、安装ctags
    * CentOS 执行： sudo yum -y install ctags
    * Ubuntu 执行： sudo apt-get install ctags

+ e、将.vimrc并复制到当前账户的根目录下（如：CentOS 的 /[用户名]/home 或 CentOS 的 /root ）

> 注：（出现错误记录及处理方法）

~~~
错误现象描述：处理 WinEnter 自动命令 "*" 时发生错误: E488: 多余的尾部字符: cursorcolumn^M
原因：Vim 在处理时内部把所有按照识别出的 ff 所对应的换行符都转换成了 \0，正则中以 \n 匹配
处理：安装dos2unix将配置文件进行处理
      step1: sudo yum install dos2unix
      step2: sudo dos2unix ~/.vimrc ~/.vimrc

参考资料：
[求助vim诡异的^M问题](https://zhidao.baidu.com/question/436885572532353484.html)
[VIM的配置文件求助](http://www.phpfans.net/ask/fansa1/1613756603.html)

~~~

## 参考资料

+ [Linux 包管理基础：apt、yum、dnf 和 pkg](https://linux.cn/article-8782-1.html)