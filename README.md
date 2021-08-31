# FuckCache
可能是全球最小最快的Android缓存清理工具  

## 使用方法
下载Release内安装包安装  
请确保你已经安装了[`Shizuku`](https://shizuku.rikka.app/zh-hans/)  
首次运行会请求[`Shizuku`](https://shizuku.rikka.app/zh-hans/)权限，请允许  
点击桌面图标打开即可自动清理所有缓存  
暂不支持剩余空间大于2048G的设备    

## 实现原理  
本程序核心思路是调用cmd package trim-caches来实现释放缓存  
由于该命令需要adb或root权限所以需要依赖[`Shizuku`](https://shizuku.rikka.app/zh-hans/)  
为了尽可能压缩安装包体积，没有采用常规的申请权限回调的[`Shizuku`](https://shizuku.rikka.app/zh-hans/)调用方法，而是模拟终端调用的办法  

## 源码内容
`Lqinlili/`内为本软件核心代码  
其余目录内是基于[`Shizuku`](https://shizuku.rikka.app/zh-hans/)导出的适用于终端的`dex`修改而来，用于在非终端环境正常调用  

## 说明
由于Android系统对隐藏api的限制，本软件必须设置29或更低的`targetsdkversion`才能正常运行  