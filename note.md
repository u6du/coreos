CoreOS

# 查看系统版本

https://coreos.com/releases/

```
cat /etc/os-release
```

# 进入开发环境



运行/bin/toolbox命令进入库存Fedora容器。

安装您需要的任何软件。

dnf -y install git （dnf替换了yum）

 “但等等 - 我在一个容器里！”

不要担心 - 当容器内部时，主机的文件系统安装在/media/root。
