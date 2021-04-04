脚本及背景介绍详见 [系统中的大多数文件有多大？ - Farseerfc的小窝](https://farseerfc.me/file-size-histogram.html)

首先用 find 命令统计一下每个文件的大小，输出到一个文件里：

```
find /home -type f -printf "%s %p\n" > myhome.txt
```

myhome.txt的内容正常应该是每行一个数字和文件名，空格隔开。

然后用Python的Matplotlib和NumPy对收集到的文件大小数据画个直方图（histogram）

```
./​filesizehistogram.py myhome.txt
```

中位数（median）平均数（mean）
