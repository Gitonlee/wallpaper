@echo off
set srcDir=C:\Users\lilei\AppData\Local\Packages\Microsoft.Windows.ContentDeliveryManager_cw5n1h2txyewy\LocalState\Assets
rem ��ȡ���������ļ�����λ��
set destDir=%cd%
echo From:%srcDir%.
echo To:%destDir%

c:
cd %srcDir%

rem if not exist %destDir% (
rem md %destDir%
rem )

set /a cnt=0
rem ����
echo.
for %%f in (*.*) do (
cp %%f %destDir%/%%f.jpg
echo %%f.jpg
set /a cnt+=1
)

echo.
echo �� %cnt% ��
pause