wsl -t %1
wsl --unregister %1
rmdir /s /q %1.wsl
mkdir %1.wsl
wsl --import %1 .\%1.wsl %1.tar
