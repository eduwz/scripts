; simpler version of a PoE Killer

F6:: ; this is the key if you want to rebind.
ProcessName = PathOfExile_x64Steam.exe ; use "PathOfExile_x64.exe" for non steam.
Loop{
	Process, Exist, %ProcessName%
	If ErrorLevel = 0
		break
	Process, Close, %ProcessName%
	}
return

; @eduwz

