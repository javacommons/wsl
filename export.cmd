wsl -t %1
del %1.tar
wsl --export %1 %1.tar
