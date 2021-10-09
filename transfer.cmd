wsl -t %1
del %2.tar
wsl --export %1 %2.tar
wsl -t %2
wsl --unregister %2
rmdir /s /q %2.wsl
mkdir %2.wsl
wsl --import %2 .\%2.wsl %2.tar
powershell -Command "$ErrorActionPreference = 'SilentlyContinue'; Function WSL-SetDefaultUser ($distro, $user) { Get-ItemProperty Registry::HKEY_CURRENT_USER\Software\Microsoft\Windows\CurrentVersion\Lxss\*\ DistributionName | Where-Object -Property DistributionName -eq $distro | Set-ItemProperty -Name DefaultUid -Value ((wsl -d $distro -u $user -e id -u) | Out-String); }; WSL-SetDefaultUser %2 user"
