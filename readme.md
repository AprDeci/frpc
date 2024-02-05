**适用于多服务器多配置文件的frpc docker启动方式**<br/>
基于[snowdreamtech/frpc](https://hub.docker.com/r/snowdreamtech/frpc)

~~~
docker run --restart=always --network host -d -v /etc/frp:/etc/frp --name frpc aprdec/frpc
~~~
在frp文件夹中加入一个或多个.toml配置文件