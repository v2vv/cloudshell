## 1 cloushell 免费5g永久磁盘利用
### 使用限制
cpu 4核 内存 16G
每周 50 个小时 ，两个账号每周100小时

## 2 使用方式

### 2.1 安装 google cloudshell cli

https://cloud.google.com/sdk/docs/install-sdk?hl=zh-cn

```powershell
(New-Object Net.WebClient).DownloadFile("https://dl.google.com/dl/cloudsdk/channels/rapid/", "$env:Temp\GoogleCloudSDKInstaller.exe")
& $env:Temp\GoogleCloudSDKInstaller.exe
```

### 2.2 初始化
```sh
gcloud init 
```

### 2.3 添加config配置文件到 用户 .ssh 目录
### 2.4 将 cloundsehll.ps1 脚本 添加到环境变量中
### 2.5 在终端中执行 cloudshell 脚本



## 3 常用指令
### 3.1连接cloud
```sh
# 初始化
gcloud init 
gcloud cloud-shell ssh
```
### 3.2 gcloud sdk切换用户
```shell
gcloud config set account `ACCOUNT`
gcloud config set account v2vvcn@gmail.com
gcloud config set account hinadamonety36@gmail.com
```

### 3.3 列出用户
```sh
gcloud auth list
```
