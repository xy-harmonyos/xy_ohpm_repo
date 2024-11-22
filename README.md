# xy_ohpm_repo

| [简体中文](./README.md)         | [繁體中文](readme/README.zh-hant.md)        |                      [English](readme/README.en.md)          |
| ----------- | -------------|---------------------------------------|

## 说明

鸿蒙ohpm私仓服务镜像.

## 源码仓库

| [Github](https://github.com/xy-harmonyos/xy_ohpm_repo.git)         | [Gitee](https://gitee.com/xy-harmonyos/xy_ohpm_repo.git)        |                      [GitCode](https://gitcode.com/xy-harmonyos/xy_ohpm_repo.git)          |
| ----------- | -------------|---------------------------------------|


## 安装

```bash
# bash
docker pull yuyangit/xy_ohpm_repo:latest
```

## 使用

1. 编译镜像

```bash
./build.sh
```

2. 直接运行容器

```bash
# bash
docker run -itd --privileged --restart always --name xy_ohpm_repo -p 10015:8088 yuyangit/xy_ohpm_repo:latest
```

## 许可证
xy_ohpm_repo 根据 <木兰宽松许可证, 第2版> 获得许可。有关详细信息，请参阅 [LICENSE](LICENSE) 文件。

## 捐赠
如果小伙伴们觉得这些工具还不错的话，能否请咱喝一杯咖啡呢?  

![Pay-Total](./readme/Pay-Total.png)


## 联系方式

```
微信: yuyangiit
邮箱: yuyangit.0515@qq.com
```