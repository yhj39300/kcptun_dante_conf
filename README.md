# Kcptun_dante_conf

Kcptun + Dante 高速socks5代理服务器



- Kcptun server，位于VPS，负责客户端与服务器之间的通信加密和加速
- Dante server，位于VPS，负责提高 socks5 协议的代理服务器
- Kcptun client，位于客户端，与服务器上的 kcptun server 协同来实现数据的加密和加速



## 部署

### Debian部署Dante

从源安装dante

```shell
apt-get install -y dante-server
useradd sock -s /bin/false
```

拷贝 danted.conf 至 /etc

```shell
cp danted.conf /etc
```

启动

```shell
/etc/init.d/danted start
```



### Debian部署Kcptun server

根据VPS的CPU架构到其官方[github](https://github.com/xtaci/kcptun/releases)仓库下载对应的二进制文件

```shell
mv server_linux_amd64 /usr/local/bin/kcptun
```

启动

```shell
./start_kcptun.sh
```



### OSX部署Kcptun client

到官方github仓库下载darwin 架构的二进制文件

```shell
mv client_darwin_amd6 /usr/local/bin/kcptun
```

配置启动脚本

```sh
mv com.xtaci.kcptun.plist /Library/LaunchAgents
launchctl load /Library/LaunchAgents/com.xtaci.kcptun.plist
```









