#NoEnv
#SingleInstance force
#Persistent

; /* poehotkeys.ahk */

#If WinExist("ahk_exe PathOfExileSteam.exe") OR If WinExist("ahk_exe PathOfExile_x64.exe")
{
	GroupAdd, Client, ahk_exe PathOfExileSteam.exe
	GroupAdd, Client, ahk_exe PathOfExile_x64.exe

	Hotkey, IfWinActive, ahk_group Client
	Hotkey, ^WheelUp, left
	Hotkey, ^WheelDown, right
	Hotkey, ^h, hideout
	Hotkey, F2, remaining
	Hotkey, F3, oss
	Hotkey, $^g, mapmod
	Hotkey, ~^LButton, alert
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
	
	mapmod:
	Send ^f
	SendRaw "!tal d|f ph|gen|eec|`% ma|oj|f bur|hil".
	return
	
	alert:
	ClipSaved := ClipboardAll
	Send ^c
	if (RegExMatch(clipboard, "Item Class: Maps"))
	if (RegExMatch(clipboard, "i)tal d|f ph|gen|eec|`% ma|oj|bur|hill"))
	SoundPlay, sound/Alert.mp3
	Clipboard := ClipSaved
	return
	
}
return

; @eduwz
