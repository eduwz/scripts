#NoEnv
#SingleInstance force
#Persistent
#ifWinActive, ahk_exe PathOfExile_x64Steam.exe ; use "PathOfExile_x64.exe" for non steam.

; Set your Resolution or don't, I'm not your boss.
W = 1920
H = 900

LWIN & 7:: ; this is the HotKey if you want to rebind.
SetTitleMatchMode, 2

WinGet Style, Style, A
if(H = "" OR W = "") {
if(Style & 0xC40000) {
WinGetPos, X, Y, Width, Height, A
WinSet, Style, -0xC40000, A
} else {
WinSet, Style, +0xC40000, A
}
return
} else {
if(Style & 0xC40000) {
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