## cloushell 免费5g永久磁盘利用
### 使用限制
cpu 4核 内存 16G
每周 50 个小时 ，两个账号每周100小时

## 使用方式

### 安装 google cloudshell cli

https://cloud.google.com/sdk/docs/install-sdk?hl=zh-cn

```powershell
(New-Object Net.WebClient).DownloadFile("https://dl.google.com/dl/cloudsdk/channels/rapid/", "$env:Temp\GoogleCloudSDKInstaller.exe")
& $env:Temp\GoogleCloudSDKInstaller.exe
```

### 连接指令
```sh
# 初始化
gcloud init 
gcloud cloud-shell ssh
```

### gcloud sdk切换用户
```shell
gcloud config set account `ACCOUNT`
gcloud config set account v2vvcn@gmail.com
gcloud config set account hinadamonety36@gmail.com
```

### 列出用户
```sh
gcloud auth list
```
