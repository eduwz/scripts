#NoEnv
#SingleInstance force
#Persistent
#ifWinActive, ahk_exe PathOfExile_x64Steam.exe ; use "PathOfExile_x64.exe" for non steam.

LWIN & 7:: ; this is the key if you want to rebind.

WinGet Style, Style, A
If (Style & 0xC40000) {
WinSet, Style, -0xC40000, A
} Else {
WinSet, Style, +0xC40000, A
}
return

; @eduwz