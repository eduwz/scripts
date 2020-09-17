#NoEnv
#SingleInstance force
#Persistent

; /* poekiller.ahk */

F6:: ; HOTKEY
PoeKiller("PathOfExile_x64Steam.exe") or PoeKiller("PathOfExile_x64.exe")

PoeKiller(name)
{
	Loop
	{
		Process, Exist, %name%
		If ErrorLevel = 0
			break
		Process, Close, %name%
	}
}

return


; @eduwz
