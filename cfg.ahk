#NoEnv
#SingleInstance force
#Persistent

; ###########################################
; # windowsh!t
; ###########################################

; disable capslock bucause reasons.
SetCapsLockState, AlwaysOff
return

; remap foward back buttons on mouse if needed

;F13::Numpad1
;return
;F14::Numpad2
;return
;F15::Numpad3
;return


; ###########################################
; # path of exile
; ###########################################

; ###### PoE Killer ######
; This kill the poe process, sometimes the game crashes and windows won't let you open the game again because the process it still up.

F6:: ; trigger HotKey
ProcessName("PathOfExile_x64Steam.exe") or ProcessName("PathOfExile_x64.exe") ; it will kill both if open at same time

ProcessName(name){
Loop{
	Process, Exist, %name%
	If ErrorLevel = 0
		break
	Process, Close, %name%
	}
	}
return

;
; nothing was here!
;

; ###### PoE Windowed Bordeless ######
; This will remove the window border and also move the window to a set resolution/position, the game must be running in windowed mode.


#if WinActive("ahk_exe PathOfExile_x64Steam.exe") or WinActive("ahk_exe PathOfExile_x64.exe")

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
; # apex
; ###########################################

#ifWinActive, ahk_exe r5apex.exe

; jump w/ wheel up

^WheelDown::
SendInput {space}
return


; mute //todo mute game shortcut while landing cause is too loud


; ###########################################
; # krita
; ###########################################

#ifWinActive, ahk_exe krita.exe
; title bar kinda sucks remove it //todo make title same color as theme


; ###########################################
; # @eduwz | Send me Nudes 
; ###########################################
