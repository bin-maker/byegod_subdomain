# 别天神-神速子域名查询

### 在线查询地址：https://ruo.me/ （不支持泛解析，没时间更新，本开源代码支持泛解析，可以自己搭建）

### 服务器：1H / 1G

### 开源计划：后端已开源（修改版开源，原系统的核心环形dns缓冲部分，因为应用到了内部扫描器，无法开源。改成了速度差不多的host命令形式开源，效果相差不大。）

### TODO：

~~1.支持泛解析（早已有解决方案，只是还没行动，会尽快抽时间修改）~~

2.支持一键导出（JS加密过，源文件有丢失，不太好改，有时间会重新弄下）

---

work.sh 工作脚本
cc.sh   实际执行脚本
index.js   nodejs服务器后端文件


使用说明：

1.整体逻辑：

前端将要查询的域名通过websocket发给后端index.js文件，如果是实时模式，那么直接查询并返回消息给前端，如果是极速模式，则调用work.sh脚本，work.sh实际调用了cc.sh,并把执行结果储存到redis数据库中，当脚本都执行完成，index.js从redis数据库中取出数据并发送给前端。


2.配置说明：

每个文件里面都有注释，配置下你自己的域名、证书以及redis本地数据库的端口和密码即可，如果不想用redis可以自己修改成mysql或其他的都可以。

3.都配置好以后，forever node index.js 即可，foever命令是nodejs的守护进程工具，如果脚本因为意外断掉会自动重新启用，不需要人工值守。

4.其他师傅配置好的demo案例：http://129.226.62.68:8888/

============================================

脚本传给redis的数据格式，自己根据格式，前端按照自己的需求写好js处理字符串即可，本开源源码已经优化升级到支持泛解析，ruo.me 网站在线查询尚未优化到支持泛解析，有空会更新 ：

sip|111.202.115.68
img|182.61.200.83
www1|182.61.200.6
e|182.107.80.35
media|112.34.111.131
app|110.242.69.12
portal|172.22.1.82
video|180.76.54.189
api|110.242.69.31
my|111.206.223.136
dns|110.242.68.134
crm|110.242.69.139
lyncdiscover|111.202.115.71
images|182.61.62.50
download|182.61.200.126
static|182.61.200.83
pda|182.61.200.1
info|111.206.208.219
ns3|112.80.248.64
cdn|10.169.43.10
dns1|110.242.68.134
home|183.232.232.54
online|112.34.111.131
mail|111.202.115.87
proxy|112.80.248.64
gis|220.181.43.102

