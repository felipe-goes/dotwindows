@echo off

set /p destino="yuzu-"
set destino=C:\Users\ogoes\AppData\Local\yuzu\yuzu-%destino%

set user=C:\Users\ogoes\AppData\Local\yuzu\user
set amiibo=C:\Users\ogoes\AppData\Local\yuzu\AmiiboBins-UPDATE_08_10_2021\AmiiboBins
set mods=C:\Users\ogoes\AppData\Local\yuzu\YuzuModDownloader_v1.3.1.0
set userDestino=%destino%\user
set amiiboDestino=%destino%\AmiiboBins
set modsDestino=%destino%

mkdir %userDestino%
mkdir %amiiboDestino%

xcopy /s %user% %userDestino%
xcopy /s %amiibo% %amiiboDestino%
xcopy /s %mods% %modsDestino%
