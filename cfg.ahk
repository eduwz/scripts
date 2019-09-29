
#NoEnv
#SingleInstance force
#Persistent

; ###########################################
; # windowsh!t
; ###########################################

; disable capslock bucause reasons.
SetCapsLockState, AlwaysOff
return

; don't remember for what app was that 2 lines. :)
Numpad1::XButton1
Numpad2::XButton2
return


; ###########################################
; # path of exile
; ###########################################

; ###### PoE Killer ######
; This kill the poe process, sometimes the game crashes and windows won't let you open the game again because the process it still up.

F6:: ; trigger HotKey

ProcessName = PathOfExile_x64Steam.exe ; use "PathOfExile_x64.exe" for non steam.
Loop{
	Process, Exist, %ProcessName%
	If ErrorLevel = 0
		break
	Process, Close, %ProcessName%
	}
return

; ###### PoE Windowed Bordeless ######
; This will remove the window border and also move the window to a set resolution/position, the game must be running in windowed mode.

#ifWinActive, ahk_exe PathOfExile_x64.exe ; use "PathOfExile_x64.exe" for non steam.

LWIN & 7:: ; trigger Hotkey
SetTitleMatchMode, 2
WinGet Style, Style, A
if(Style & 0xC40000) {
WinGetPos, X, Y, Width, Height, A
WinSet, Style, -0xC40000, A
WinMove,A,,0,0,1920,900 ; This is a custom resolution, make sure you change here and ingame with the resolution you want.
} else {
WinSet, Style, +0xC40000, A
WinMove,A,,%X%,%Y%,%Width%,%Height%
}
return

; ###### ScrollWheel Stash ######

^WheelUp::
SendInput {left}
return

^WheelDown::
SendInput {right}
return

; ###### Hideout ######

^h::
SendInput {enter} /hideout {enter}
return

; ###### Remaining ######

F2::
SendInput {enter} /remaining {enter}
return

; ###### Oss ######

F3::
SendInput {enter} /oss {enter}
return


; ###### Wiki ######
; to be continued...
; ^w::


; ###########################################
; # deadcells
; ###########################################

#ifWinActive, ahk_exe deadcells.exe

; this game doesn't allow to use semicolon, so this remap to page up.
`;::PgUp

; ###########################################
; # @eduwz | Send me Nudes 
; ###########################################