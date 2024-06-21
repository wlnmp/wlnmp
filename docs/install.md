### WLNMP一键安装包使用方法

#### 如果你是第一次使用wlnmp一键安装包，请耐心看完本页内容！

#### 一、配置额外的源（必须）

##### 1、添加epel源或epol源

*   如果你是CentOS7.x、Alibaba CloudLinux 2、Alibaba CloudLinux 3、AlmaLinux8.x、AnolisOS8.x、CentOS8.x、OpenCloudOS8.x、RockyLinux8.x、AlmaLinux9.x、RockyLinux9.x系统可以直接执行以下命令安装epel源。

```
yum install epel-release
```

*   如果你是OpenEuler 20.03(SP1-SP4)、OpenEuler 22.03(SP1-SP3)系统可以通过以下命令安装epel源（注：OpenEuler24.03 无需添加epel源，直接添加wlnmp源即可使用）。

```
curl -o /etc/yum.repos.d/epel-OpenEuler.repo https://down.whsir.com/downloads/epel-OpenEuler.repo
```

*   如果你是opencloudos9.x系统，需要安装**epol**源，因为opencloudos9.x并不是红帽9的兼容版本。

```
yum install epol-release
```

##### 2、开启crb源(AlmaLinux9.x、RockyLinux9.x)

*   如果你是AlmaLinux9.x、RockyLinux9.x系统，还需要手动开启crb源，因为在el9系统中，默认crb源是关闭的。

```
dnf config-manager --set-enabled crb
```

#### 二、添加wlnmp源

**（新）（推荐）在上一步完成epel、epol或crb源后，开始添加wlnmp源，建议使用下面命令，自动安装对应系统的WLNMP一键安装包源**

```
curl -fsSL "https://sh.wlnmp.com/wlnmp.sh" | bash
```

**（系统版本支持见：[https://www.wlnmp.com/release](https://www.wlnmp.com/release)）**

**请注意：确保服务器时间以及DNS解析是正确的，最近发现有些用户的系统时间或DNS解析异常导致执行安装时提示证书过期等相关问题。**

* * *

下面是老的传统方式添加WLNMP一键安装包源，建议优先使用上面（新）的方式

Centos6(停止维护)/7/8系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/centos/wlnmp-release-centos.noarch.rpm
```

RockyLinux8系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/rockylinux/wlnmp-release-rocky-8.noarch.rpm
```

RockyLinux9系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/rockylinux/wlnmp-release-rockylinux-9.noarch.rpm
```

openeuler20.03(SP1-SP4)/openeuler22.03(SP1-SP3)系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/openeuler/wlnmp-release-openeuler.noarch.rpm
```

openeuler24.03系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/openeuler/wlnmp-release-openeuler-24.noarch.rpm
```

AlmaLinux8系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/almalinux/wlnmp-release-almalinux-8.noarch.rpm
```

AlmaLinux9系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/almalinux/wlnmp-release-almalinux-9.noarch.rpm
```

AnolisOS8系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/anolisos/wlnmp-release-anolisos-8.noarch.rpm
```

Alibaba CloudLinux 2.1903/3系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/alinux/wlnmp-release-alinux.noarch.rpm
```

OpenCloudOS8系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/opencloudos/wlnmp-release-opencloudos-8.noarch.rpm
```

OpenCloudOS9系统添加WLNMP一键安装包源

```
rpm -ivh https://mirrors.wlnmp.com/opencloudos/wlnmp-release-opencloudos-9.noarch.rpm
```

* * *

#### 三、软件安装

所有同类型软件，只能存在一个版本。但是php、MySQL、MariaDB可多版本并存，请看第四节教程

注意：如果在安装时报错，请先清理源的缓存，例如yum clean all、dnf clean all、rm -rf /var/cache/dnf/、rm -rf /var/cache/yum/。

安装Nginx/Tengine/openresty

```
yum install wnginx
yum install wtengine
yum install wopenresty
```

安装php5.6/php7.0/php7.1/php7.2/php7.3/php7.4/php8.0/php8.1/php8.2/php8.3

```
yum install wphp56
yum install wphp70
yum install wphp71
yum install wphp72
yum install wphp73
yum install wphp74
yum install wphp8
yum install wphp81
yum install wphp82
yum install wphp83
```

安装redis6/redis6.2/redis7/redis7.2

```
yum install wredis6
yum install wredis62
yum install wredis7
yum install wredis72
```

安装keepalived

```
yum install wkeepalived
```

安装php5.6/php7.0/php7.1/php7.2/php7.3/php7.4/php8.0/php8.1/php8.2/php8.3扩展

```
yum install wphp56-memcache wphp56-zend-loader ......
yum install wphp70-ldap ......
yum install wphp71-amqp ......
yum install wphp72-snmp ......
yum install wphp73-sodium ......
```

安装MySQL5.5/MySQL5.6/MySQL5.7/MySQL8.0/Mariadb104/Mariadb105/Mariadb106/Mariadb1011

```
yum install wmysql55
yum install wmysql56
yum install wmysql57
yum install wmysql8
yum install wmariadb104
yum install wmariadb105
yum install wmariadb106
yum install wmariadb1011
```

注意：所有MySQL、MariaDB版本的默认密码都为空

仅修改MySQL5.5、5.6、5.7的密码

```
mysql -uroot -p
mysql> set password = password('whsir');
```

MySQL8.0密码修改（注意MySQL8.0修改密码方式不同）

```
mysql -uroot -p
mysql> ALTER USER 'root'@'localhost' IDENTIFIED BY 'whsir';
```

注意：默认MySQL安装完成后，只允许localhost即本机访问，如果需要所有IP都具有访问权限请执行以下命令

MySQL5.5、MySQL5.6、MySQL5.7、mariadb10.4、mariadb10.5、mariadb10.6、mariadb10.11修改root密码并允许所有IP访问，可以使用以下方法，这里的whsir为你要修改的密码

```
mysql -uroot -p
mysql> grant all privileges on \*.\* to 'root'@'%' identified by 'whsir' with grant option;
mysql> flush privileges;
```

MySQL5.7、8.0允许所有IP访问，可以使用以下方法

```
mysql -uroot -p 
mysql> use mysql; 
mysql> update user set host = '%' where user ='root'; 
mysql> flush privileges; 
mysql> exit
```

nginx中php配置，在/usr/local/nginx/conf/vhost/demo.conf配置文件中，找到安装对应php的版本，取消前面#注释，重启nginx即可

如果使用了多版本的php，想使用哪个php，则取消哪个php注释即可，多个.conf文件或server字段，可使用不同的php版本。

```
#include enable-php56.conf;
#include enable-php70.conf;
#include enable-php71.conf;
#include enable-php72.conf;
#include enable-php73.conf;
#include enable-php74.conf;
#include enable-php8.conf;
#include enable-php81.conf;
#include enable-php82.conf;
#include enable-php83.conf;
```

* * *

#### 四、php、MySQL、MariaDB多版本并存安装

同时安装并存多版本php5.6/php7.0/php7.1/php7.2/php7.3/php7.4/php8.0/php8.1/php8.2/php8.3

```
yum install wcphp56
yum install wcphp70
yum install wcphp71
yum install wcphp72
yum install wcphp73
yum install wcphp74
yum install wcphp8
yum install wcphp81
yum install wcphp82
yum install wcphp83
```

同时安装并存多版本MySQL5.5/MySQL5.6/MySQL5.7/MySQL8.0/MariaDB10.4/MariaDB10.5/MariaDB10.6/MariaDB10.11

```
yum install wcmysql55
yum install wcmysql56
yum install wcmysql57
yum install wcmysql8
yum install wcmariadb104
yum install wcmariadb105
yum install wcmariadb106
yum install wcmariadb1011
```

相关教程查看：[https://www.wlnmp.com/post-1977.html](https://www.wlnmp.com/post-1977.html)

* * *

#### 五、启动停止服务

**所有启动停止可通过/etc/init.d目录下的启动脚本来实现，也可通过systemctl**，在软件安装后，ls查看/etc/init.d目录下的脚本文件。

使用方式：

```
/etc/init.d/SOFT start/stop/restart/status
```
```
systemctl start/stop/restart/status SOFT
```

例：启动nginx

```
/etc/init.d/nginx start
```
```
systemctl start nginx
```

例：停止nginx

```
/etc/init.d/nginx stop
```
```
systemctl stop nginx
```

例：查看nginx状态

```
/etc/init.d/nginx status
```
```
systemctl status nginx
```

例：启动php、MySQL多版本并存方式安装的php74、MySQL55等启动方法

```
/etc/init.d/php56-fpm start
systemctl start php56-fpm
/etc/init.d/mysql55 start
systemctl start mysql55
```

例：mariadb启动方法（由于MariaDB和MySQL的渊源，所以MySQL和MariaDB不可并存，启动方式相同）

```
/etc/init.d/mysql start
```

* * *

#### 六、版本升级

```
yum update SOFT
例如：升级nginx版本
yum update wnginxx
```

**更多使用详解见：**[https://www.wlnmp.com/post-2034.html](https://www.wlnmp.com/post-2034.html)

使用过程中如果有什么意见或建议，可微信搜索“吴昊博客”公众号关注留言获取微信群，或加QQ群反馈：[![$$](//pub.idqqimg.com/wpa/images/group.png "$$")](//shang.qq.com/wpa/qunwpa?idkey=0ad483ff270a2415d7c7af116724fa0338302e10f61882b359156a7358fd362d)