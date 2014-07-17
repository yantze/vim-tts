##VIM中文发音插件 v0.1
---

### 简介
很久之前就在使用tts语音引擎朗读一些文章，可以在边做其他事情的时候，边听文章。IOS/Android客户端都有一些小说朗读软件，但是在windows平台下，比较少。

windows自带的朗读TTS默认不支持中文，下载的中文朗读引擎文件中小的朗读有问题，好的文件又太大了。

正好很久之前就想把讯飞语音的接口拿来自己做一个java的朗读接口，今天终于花了几个小时完成了最初的版本。

### require
- java jre 1.5+
- 联网
- 在Windows8.1 x64测试正常

### 使用方法
:TTS

如果文件是GBK编码的

:TTSGBK

### 自定义参数
修改tts_jar.vim文件，里面的参数说明

- -p 要朗读的文件路径
- -c 文件的编码
- -w 朗读者角色选择(插件目录下面有一张人物发音列表的图片
- -v 朗读声音
- -s 朗读速度


### 朗读的外置接口
如果想在vim之外也使用这个插件，
详细的参数和使用方法请参照tts.bat里面的用法
