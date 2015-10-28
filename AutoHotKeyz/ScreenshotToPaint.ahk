;Alt+PrtScrn to execute windows 10 screenshot and immediately open for editing in paint

#NoEnv  ;
; #Warn  ; 
SendMode Input  ; 
SetWorkingDir %A_ScriptDir%  ;

!PrintScreen::
Send {LWin Down}{PrintScreen}{LWin Up} 
latestFile()
return

latestFile()
{
	Loop, C:\Users\%A_UserName%\Pictures\Screenshots\*.png
	{
		If (A_LoopFileTimeCreated>Rec)
		{
			FPath=%A_LoopFileFullPath%
			Rec=%A_LoopFileTimeCreated%
		}
	}
	Run, MSPaint "%FPath%"
}
