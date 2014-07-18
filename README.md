##VIM中文发音插件 v0.2

### 简介
很久之前就在使用tts语音引擎朗读一些文章，可以在边做其他事情的时候，边听文章。IOS/Android客户端都有一些小说朗读软件，但是在windows平台下，比较少。

windows自带的朗读TTS默认不支持中文，下载的中文朗读引擎文件中小的朗读有问题，好的文件又太大了。

之前正好用vbs也做了一个利用windows自带的tts语音处理文件，都一并整合到里面去了，如果要朗读中文，需要安装中文朗读引擎。

正好很久之前就想把讯飞语音的接口拿来自己做一个java的朗读接口，今天终于花了几个小时完成了最初的版本。

### Requirement

#####jar方式朗读
- java jre 1.5+
- 联网

#####vbs方式朗读
- 需要下载中文朗读引擎，否则只能读英文

### 安装方法

####vundle
在配置中添加
```
Plugin 'yantze/vim-tts'
```
重新打开一次vim，执行
```
PluginInstall
```
即可。

####手动安装
解压[下载的文档](https://github.com/yantze/vim-tts/archive/master.zip),把vim-tts目录放到plugin目录下即可。

### 使用方法
```
:TTS
```

如果要朗读的文件是GBK编码的，执行

```
:TTSGBK
```

如果要用windows自带的tts朗读，执行

```
:MSTTS
```

给vim-tts添加快捷按钮
```viml
noremap <silent><leader>gr :TTS<cr>
inoremap <silent><leader>gr <Esc>:TTS<cr>
```
其中`<silent>`是让程序在退出后，不用再确认；
`<leader>`是一个功能键，默认是'\'反斜杠。

在Windows8.1 x64测试正常

###注意事项

- 要朗读的文件必须是已经保存在磁盘中
- 要朗读的文件名称必须是英文名(中文乱码)

### 自定义参数
修改tts.vim文件，里面的参数说明

- -p 要朗读的文件路径
- -c 文件的编码
- -w 朗读者角色选择(插件目录下面有一张人物发音列表的图片)
- -v 朗读声音(1-100) default=50
- -s 朗读速度(1-100) default=50
- -h 显示帮助


### 朗读的外置接口
如果想在vim之外也使用这个插件，
详细的参数和使用方法请参照tts.bat里面的用法

tip:

给tts.bat创建快捷方式，将文件放到：SystemDrive:\Users\YourUserName\AppData\Roaming\Microsoft\Windows\SendTo中

下次想要读中文，就可以直接右键单击要读的文件，选择发送到，tts.bat就可以自动发音了。
