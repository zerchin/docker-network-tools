# docker-network-tools
构建一个包含网络相关工具的瑞士军刀

该镜像基于nginx:alpine，镜像不会很大


有兴趣可以参考Dockefile，自己修改~~


## 工具
已安装软件
```bash
apk add --no-cache curl tcpdump tcptraceroute iperf3 \
    fio bridge-utils bash jq openssh-client busybox-extras \
    iftop bash-completion
```
