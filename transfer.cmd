wsl -t %1
del %2.tar
wsl --export %1 %2.tar
wsl -t %2
wsl --unregister %2
rmdir /s /q %2.wsl
mkdir %2.wsl
wsl --import %2 .\%2.wsl %2.tar
