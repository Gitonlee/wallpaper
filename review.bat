@echo off
set srcDir=C:\Users\lilei\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
rem 获取本批处理文件所在位置
set destDir=%cd%
echo From:%srcDir%.
echo To:%destDir%

c:
cd %srcDir%

rem if not exist %destDir% (
rem md %destDir%
rem )

set /a cnt=0
rem 换行
echo.
for %%f in (*.*) do (
cp %%f %destDir%/%%f.jpg
echo %%f.jpg
set /a cnt+=1
)

echo.
echo 共 %cnt% 张
pause