#NoEnv
#SingleInstance force
#Persistent

; BordelessWindowed

F7:: ; this is the HotKey if you want to rebind.

WinGet Style, Style, A
If(Style & 0xC40000) {
MsgBox 64, Bordeless, Press %A_ThisHotKey% again to revert ; add a semicolon before "MsgBox" to hide the popup alert.
WinGetPos, X, Y, Width, Height, A
WinSet, Style, -0xC40000, A
WinMove,A,,0,0,% A_ScreenWidth,% A_ScreenHeight

; restore window and borders

} Else {
WinSet, Style, +0xC40000, A
WinMove,A,,%X%,%Y%,%Width%,%Height%
}
return

; @eduwz