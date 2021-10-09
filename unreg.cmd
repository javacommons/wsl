wsl -t %1
wsl --unregister %1
rmdir /s /q %1.wsl
