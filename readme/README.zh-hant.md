<!--
 * @Author: 余洋 yuyangit.0515@qq.com
 * @Date: 2024-10-18 13:02:22
 * @LastEditors: 余洋 yuyangit.0515@qq.com
 * @LastEditTime: 2024-10-23 20:51:56
 * @FilePath: /xy_ohpm_repo/readme/README.zh-hant.md
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
# xy_ohpm_repo

| [简体中文](../README.md)         | [繁體中文](./README.zh-hant.md)        |                      [English](./README.en.md)          |
| ----------- | -------------|---------------------------------------|

## 說明

希洋開源軟體包運作環境.

## 程式碼庫

| [Github](https://github.com/xy-harmonyos/xy_ohpm_repo.git)         | [Gitee](https://gitee.com/xy-harmonyos/xy_ohpm_repo.git)        |                      [GitCode](https://gitcode.com/xy-harmonyos/xy_ohpm_repo.git)          |
| ----------- | -------------|---------------------------------------|


## 安裝

```bash
# bash
docker pull yuyangit/xy_ohpm_repo:0.0.1
```

## 使用


1. 編譯鏡像

```bash
./build.sh
```

1. 直接運行容器

```bash
# bash
docker run -itd --privileged --restart always --name xy_base -p 10015:8088 -v <宿主路徑>:<容器路徑> yuyangit/xy_ohpm_repo:latest
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