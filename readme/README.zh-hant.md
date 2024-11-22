# xy_ohpm_repo

| [简体中文](../README.md)         | [繁體中文](./README.zh-hant.md)        |                      [English](./README.en.md)          |
| ----------- | -------------|---------------------------------------|

## 說明

鴻蒙ohpm私倉服務鏡像.

## 程式碼庫

| [Github](https://github.com/xy-harmonyos/xy_ohpm_repo.git)         | [Gitee](https://gitee.com/xy-harmonyos/xy_ohpm_repo.git)        |                      [GitCode](https://gitcode.com/xy-harmonyos/xy_ohpm_repo.git)          |
| ----------- | -------------|---------------------------------------|


## 安裝

```bash
# bash
docker pull yuyangit/xy_ohpm_repo:latest
```

## 使用


1. 編譯鏡像

```bash
./build.sh
```

1. 直接運行容器

```bash
# bash
docker run -itd --privileged --restart always --name xy_ohpm_repo -p 10015:8088 yuyangit/xy_ohpm_repo:latest
```

## 許可證
xy_ohpm_repo 根據 <木蘭寬鬆許可證, 第2版> 獲得許可。有關詳細信息，請參閱 [LICENSE](../LICENSE) 文件。

## 捐贈

如果小夥伴們覺得這些工具還不錯的話，能否請咱喝一杯咖啡呢?  

![Pay-Total](./Pay-Total.png)

## 聯繫方式

```
微信: yuyangiit
郵箱: yuyangit.0515@qq.com
```