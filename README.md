# WLNMP - 一键安装包

WLNMP一键安装包是基于上游开源软件的二次开发，提供了支持x86_64、AArch64架构的Linux系统镜像源。通过添加WLNMP提供的镜像源，可以使用yum/dnf快速部署Nginx、MySQL、PHP等常用软件，并且支持PHP、MySQL多个版本在同一系统中并存。

## wlnmp.sh脚本

- 自动识别当前系统以及版本
- 自动安装对应系统的WLNMP源

## wlnmp源使用

### 1、添加epel源或epol源

- 如果你是CentOS7.x、Alibaba CloudLinux 2、Alibaba CloudLinux 3、AlmaLinux8.x、AnolisOS8.x、CentOS8.x、OpenCloudOS8.x、RockyLinux8.x、AlmaLinux9.x、RockyLinux9.x系统可以直接执行以下命令安装epel源。

```bash
yum install epel-release
```

- 如果你是OpenEuler 20.03(SP1-SP4)、OpenEuler 22.03(SP1-SP3)系统可以通过以下命令安装epel源（注：OpenEuler24.03 无需添加epel源，直接添加wlnmp源即可使用）。

```bash
curl -o /etc/yum.repos.d/epel-OpenEuler.repo https://down.whsir.com/downloads/epel-OpenEuler.repo
```

- 如果你是opencloudos9.x系统，需要安装epol源，因为opencloudos9.x并不是红帽9的兼容版本。

```bash
yum install epol-release
```

### 2、开启crb源(AlmaLinux9.x、RockyLinux9.x)

- 如果你是AlmaLinux9.x、RockyLinux9.x系统，还需要手动开启crb源，因为在el9系统中，默认crb源是关闭的。

```bash
dnf config-manager --set-enabled crb
```

### 3、添加wlnmp源

- 在上一步完成epel、epol或crb源后，开始添加wlnmp源，建议使用下面命令，自动安装对应系统的WLNMP一键安装包源

```bash
curl -fsSL "https://sh.wlnmp.com/wlnmp.sh" | bash
```

请注意：确保服务器时间以及DNS解析是正确的，最近发现有些用户的系统时间或DNS解析异常导致执行安装时提示证书过期等相关问题。

## 微信关注不迷路

![image](https://github.com/wlnmp/wlnmp/assets/46343402/0a019528-65e5-4677-8083-1a560afc1d29)


## 支持的Linux x86_64系统

- Alibaba CloudLinux 2.1903/3
- AlmaLinux 8.x/9.x
- AnolisOS 7.x/8.x
- CentOS 6.x(停止维护)
- CentOS 7.x
- CentOS 8.x
- OpenCloudOS 8.x/9.x
- OpenEuler 20.03(SP1~SP4)
- OpenEuler 22.03(SP1~SP3)
- OpenEuler 24.03
- RockyLinux 8.x/9.x

## 支持的Linux aarch64系统

- Alibaba CloudLinux 2.1903/3
- AnolisOS 7.x/8.x
- CentOS 7.x
- OpenCloudOS 8.x/9.x
- OpenEuler 20.03(SP1~SP4)
- OpenEuler 22.03(SP1~SP3)


