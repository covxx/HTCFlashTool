@ECHO OFF
CLS
:MENU
cls
ECHO                    *************************
ECHO                   *       flashing Tool     *
ECHO                  *           @covxx          *
ECHO                 *******************************
ECHO ===============================================================
ECHO =                  What would you like to do?                 =
ECHO ===============================================================
ECHO.
ECHO Rom 
ECHO Zip
ECHO Kernel
ECHO Exit
ECHO Read me
ECHO.
SET /P M=Type what you would like to flash or if your done type exit then press enter:
IF %M%==soff GOTO soff
IF %M%==s-off GOTO soff
IF %M%==S-OFF GOTO soff
IF %M%==rom GOTO ADB
IF %M%==kernel GOTO FASTBOOT
IF %M%==exit GOTO GOODBYE
IF %M%==Rom GOTO ADB
IF %M%==Kernel GOTO FASTBOOT
IF %M%==Exit GOTO GOODBYE
IF %M%==ROM GOTO ADB
IF %M%==KERNEL GOTO FASTBOOT
IF %M%==EXIT GOTO GOODBYE
IF %M%==readme GOTO readme
IF %M%==README GOTO readme
IF %M%==read me GOTO readme
IF %M%==zip GOTO ADB
IF %M%==ZIP GOTO ADB
IF %M%==Zip GOTO ADB
:ADB
cls
cd Tools
ECHO ===============================================================
ECHO =                  Are you ready for to flash?                =
ECHO = Make sure your phone is connected and android debuging is on=
ECHO ===============================================================
ECHO.
SET /P M=type ready or not yet: 
IF %M%==not yet
THEN pause 10
adb reboot recovery 
pause 9
adb sideload flash.zip
pause 30
goto menu

:soff
cls
cd tools
echo
echo
echo =======================================================
echo        You are about to s-off your DNA!
echo
PAUSE 5
adb reboot bootloader
pause 20
fastboot oem rebootRUU
pause 30
fastboot flash zip soff.zip
pasue 10
fastboot oem boot
ECHO .
ECHO  .
SET /P S=Once in android type ready:
adb push soffbin3 /data/local/tmp/
pause 1
adb shell chmod 744 /data/local/tmp/soffbin3
pause 1
adb shell su -c "/data/local/tmp/soffbin3"
pause 3
adb reboot bootloader
echo ALL DONE!
:FASTBOOT
cls 
cd Tools
ECHO ===============================================================
ECHO =                  Are you ready for to flash?                =
ECHO = Make sure your phone is connected and android debuging is on=
ECHO ===============================================================
ECHO.
SET /P M=type ready or not yet: 
IF %M%==not yet
then pause 10
adb reboot fashboot 
pause 9 
fastboot flash boot boot.img
pause 30
goto menu
:GOODYBYE
cls
echo Thanks using! Happy flashing
pause 6
exit

:readme
cls
start README.txt
goto menu
:covxx
ECHO                                                                                                                 
ECHO                                                                                                                 
ECHO     ,---,.                                                                                                        
ECHO   ,'  .'  \                                                                                                       
ECHO ,---.' .' |                                                                                                       
ECHO |   |  |: |                                                                                                       
ECHO :   :  :  /       .--,                                                                                            
ECHO :   |    ;      /_ ./|                                                                                            
ECHO |   :     \  , ' , ' :                                                                                            
ECHO |   |   . | /___/ \: |                                                                                            
ECHO '   :  '; |  .  \  ' |                                                                                            
ECHO |   |  | ;    \  ;   :                                                                                            
ECHO |   :   /      \  \  ;                                                                                            
ECHO |   | ,'        :  \  \                                                                                           
ECHO `----'           \  ' ;                                                                                           
ECHO                   `--`                                                                                            
ECHO                                                                                                                 
ECHO                                                                                                                  
ECHO                                                   ,----..                          ,--,     ,--,   ,--,     ,--,  
ECHO                                                  /   /   \                         |'. \   / .`|   |'. \   / .`|  
ECHO                                                 |   :     :    ,---.               ; \ `\ /' / ;   ; \ `\ /' / ;  
ECHO                                                 .   |  ;. /   '   ,'\       .---.  `. \  /  / .'   `. \  /  / .'  
ECHO                                                 .   ; /--`   /   /   |    /.  ./|   \  \/  / ./     \  \/  / ./   
ECHO                                                 ;   | ;     .   ; ,. :  .-' . ' |    \  \.'  /       \  \.'  /    
ECHO                                                 |   : |     '   | |: : /___/ \: |     \  ;  ;         \  ;  ;     
ECHO                                                 .   | '___  '   | .; : .   \  ' .    / \  \  \       / \  \  \    
ECHO                                                 '   ; : .'| |   :    |  \   \   '   ;  /\  \  \     ;  /\  \  \   
ECHO                                                 '   | '/  :  \   \  /    \   \    ./__;  \  ;  \  ./__;  \  ;  \  
ECHO                                                 |   :    /    `----'      \   \ | |   : / \  \  ; |   : / \  \  ; 
ECHO                                                  \   \ .'                  '---"  ;   |/   \  ' | ;   |/   \  ' | 
ECHO                                                   `---`                           `---'     `--`  `---'     `--` 
pause 
