; simpler version of PoE Killer

F6:: ; trigger HotKey
ProcessName("PathOfExile_x64Steam.exe") or ProcessName("PathOfExile_x64.exe") ; it will kill both steam and non steam

ProcessName(name){
Loop{
	Process, Exist, %name%
	If ErrorLevel = 0
		break
	Process, Close, %name%
	}
	}
return


; @eduwz

