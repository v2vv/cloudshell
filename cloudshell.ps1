$output = gcloud alpha cloud-shell ssh --dry-run
$newIP = [regex]::Match($output, '([0-9]{1,3}\.){3}[0-9]{1,3}').Value
$username = [regex]::Match($output, '(\w+)@[0-9]+\.[0-9]+\.[0-9]+\.[0-9]+').Groups[1].Value

Write-Output "User: $username"
Write-Output "New IP: $newIP"

$configFilePath = "C:\Users\v2vv\.ssh\config"

(Get-Content $configFilePath) -replace '\S+(?= #cloud shell replace HostName)', "$newIP" | Set-Content $configFilePath
(Get-Content $configFilePath) -replace '\S+(?= #cloud shell replace User)', "$username" | Set-Content $configFilePath

# Get-Content -Path $configFilePath

gcloud alpha cloud-shell ssh `--authorize-session

code --remote=ssh-remote+google /home/$username
