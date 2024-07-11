@echo off
regedit -e "infinityanimations\batch\t-temp.reg" "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Nls\CodePage"
type "infinityanimations\batch\t-temp.reg" >> "infinityanimations\batch\t-ansi1.reg" 2>&1
del "infinityanimations\batch\t-temp.reg"
