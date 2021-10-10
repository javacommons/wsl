rem import.cmd
wsl -t %1
wsl --unregister %1
rmdir /s /q %1.wsl
mkdir %1.wsl
wsl --import %1 .\%1.wsl %1.tar
powershell -Command "$ErrorActionPreference = 'SilentlyContinue'; Function WSL-SetDefaultUser ($distro, $user) { Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lxss\*\ DistributionName | Where-Object -Property DistributionName -eq $distro | Set-ItemProperty -Name DefaultUid -Value ((wsl -d $distro -u $user -e id -u) | Out-String); }; WSL-SetDefaultUser %1 user"
