#NoEnv
#SingleInstance force
#Persistent

; /* poehotkeys.ahk */

#If WinExist("ahk_exe PathOfExile_x64Steam.exe") OR If WinExist("ahk_exe PathOfExile_x64.exe")
{
	GroupAdd, Client, ahk_exe PathOfExile_x64Steam.exe
	GroupAdd, Client, ahk_exe PathOfExile_x64.exe

	Hotkey, IfWinActive, ahk_group Client
	Hotkey, ^WheelUp, left
	Hotkey, ^WheelDown, right
	Hotkey, ^h, hideout
	Hotkey, F2, remaining
	Hotkey, F3, oss
	return

	left:
	SendInput {left}
	Sleep 20
	return

	right:
	SendInput {right}
	Sleep 20
	return
	
	hideout:
	SendInput {enter} /hideout {enter}
	return
	
	remaining:
	SendInput {enter} /remaining {enter}
	return
	
	oss:
	SendInput {enter} /oss {enter}
	return

}
return

; @eduwz