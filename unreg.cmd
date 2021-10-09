wsl -t %1
wsl --unregister %1
rmdir /s /q %1.wsl
rmdir /s /q "%USERPROFILE%\AppData\Roaming\Microsoft\Windows\Start Menu\Programs\%1"
wsl --list
