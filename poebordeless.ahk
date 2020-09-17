#NoEnv
#SingleInstance force
#Persistent
; works better with windowed mode selected ingame.

; /* poebordeless.ahk */

#if WinActive("ahk_exe PathOfExile_x64Steam.exe") or WinActive("ahk_exe PathOfExile_x64.exe")

; resolution goes here
W = 1920 ;
H = 900 ;

LWIN & 7:: ; HOTKEY
SetTitleMatchMode, 2
WinGet Style, Style, A
if(H = "" OR W = "") 
{
	if(Style & 0xC40000)
	{
		WinGetPos, X, Y, Width, Height, A
		WinSet, Style, -0xC40000, A
	} else {
		WinSet, Style, +0xC40000, A
	}
	
	return
	
} else {
	if(Style & 0xC40000)
	{
		WinGetPos, X, Y, Width, Height, A
		WinSet, Style, -0xC40000, A
		WinMove,A,,0,0,%W%,%H%
	} else {
		WinSet, Style, +0xC40000, A
		WinMove,A,,%X%,%Y%,%Width%,%Height%
	}
	
	return
}


; @eduwz
