wsl --unregister u2
rmdir /s /q u2.wsl
mkdir u2.wsl
wsl --import u2 .\u2.wsl ubuntu.tar
