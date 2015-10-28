;Ctrl+PrtScrn to simulataneously execute windows 10 screenshot and open containing folder

#NoEnv  ;
; #Warn  ; 
SendMode Input  ; 
SetWorkingDir %A_ScriptDir%  ;

^PrintScreen::
Send {LWin Down}{PrintScreen}{LWin Up}
Run, C:\Users\%A_UserName%\Pictures\Screenshots
return
