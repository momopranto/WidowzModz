; Simple script to simplify windows 10 virtual desktop navigation from Ctrl+Win+(Left/Right) to just Ctrl+(Left/Right)

#NoEnv  
; #Warn  
SendMode Input  
SetWorkingDir %A_ScriptDir% 

^Left::^#Left

^Right::^#Right
