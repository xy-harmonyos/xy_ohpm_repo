<!--
 * @Author: 余洋 yuyangit.0515@qq.com
 * @Date: 2024-10-18 13:02:22
 * @LastEditors: 余洋 yuyangit.0515@qq.com
 * @LastEditTime: 2024-10-23 20:52:22
 * @FilePath: /xy_ohpm_repo/readme/README.en.md
 * @Description: 这是默认设置,请设置`customMade`, 打开koroFileHeader查看配置 进行设置: https://github.com/OBKoro1/koro1FileHeader/wiki/%E9%85%8D%E7%BD%AE
-->
# xy_ohpm_repo

| [简体中文](../README.md)         | [繁體中文](./README.zh-hant.md)        |                      [English](./README.en.md)          |
| ----------- | -------------|---------------------------------------|

## Description

XiYang open source software package operating environment.

## Source Code Repositories

| [Github](https://github.com/xy-harmonyos/xy_ohpm_repo.git)         | [Gitee](https://gitee.com/xy-harmonyos/xy_ohpm_repo.git)        |                      [GitCode](https://gitcode.com/xy-harmonyos/xy_ohpm_repo.git)          |
| ----------- | -------------|---------------------------------------|
 

## Installation

```bash
# bash
docker pull yuyangit/xy_ohpm_repo:latest
```

## How to use

1. Build mirror

```bash
./build.sh
```

2. Run the container directly

```bash
# bash
docker run -itd --privileged --restart always --name xy_ohpm_repo -p 10015:8088 yuyangit/xy_ohpm_repo:latest
```

## License
xy_ohpm_repo is licensed under the <Mulan Permissive Software License，Version 2>. See the [LICENSE](../LICENSE) file for more info.

## Donate

If you think these tools are pretty good, Can you please have a cup of coffee?  

![Pay-Total](./Pay-Total.png)  


## Contact

```
WeChat: yuyangiit
Mail: yuyangit.0515@qq.com
```