# WLNMP - 一键安装包

WLNMP一键安装包是基于上游开源软件的二次开发，提供了支持x86_64、AArch64架构的Linux系统镜像源。通过添加WLNMP提供的镜像源，可以使用yum/dnf快速部署Nginx、MySQL、PHP等常用软件，并且支持PHP、MySQL多个版本在同一系统中并存。

## wlnmp.sh脚本

- 自动识别当前系统以及版本
- 自动安装对应系统的WLNMP源

## wlnmp.sh脚本安装

```bash
curl -fsSL "https://sh.wlnmp.com/wlnmp.sh" | bash
```
## 微信关注不迷路

![image](https://github.com/wlnmp/wlnmp/assets/46343402/0a019528-65e5-4677-8083-1a560afc1d29)


## 支持的Linux x86_64系统

- Alibaba CloudLinux 2.1903/3
- AlmaLinux 8.x/9.x
- AnolisOS 8.x
- CentOS 6.x(停止维护)
- CentOS 7.x
- CentOS 8.x
- OpenCloudOS 8.x/9.x
- OpenEuler 20.03(SP1~SP4)
- OpenEuler 22.03(SP1~SP3)
- OpenEuler 24.03
- RockyLinux 8.x/9.x

## 支持的Linux aarch64系统

- AnolisOS 8.x
- RockyLinux 8.x/9.x


