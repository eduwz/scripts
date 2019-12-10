#NoEnv
#SingleInstance force
#Persistent
#if WinActive("ahk_exe PathOfExile_x64Steam.exe") or WinActive("ahk_exe PathOfExile_x64.exe")

LWIN & 7:: ; this is the HotKey if you want to rebind.

WinGet Style, Style, A
If (Style & 0xC40000) {
WinSet, Style, -0xC40000, A
} Else {
WinSet, Style, +0xC40000, A
}
return

; @eduwz
