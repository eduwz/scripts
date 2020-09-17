#NoEnv
#SingleInstance force
#Persistent
;*-------------------------------------------------------------------------------------------------------*/

#Include poehotkeys.ahk
#Include spotify.ahk
#Include poekiller.ahk
#Include poebordeless.ahk

;*-------------------------------------------------------------------------------------------------------*/
; /* windowsh!t */

;disable capslock bucause reasons
SetCapsLockState, AlwaysOff
return

; remap foward back buttons on mouse if needed

;F13::Numpad1
;return
;F14::Numpad2
;return
;F15::Numpad3
;return

;*-------------------------------------------------------------------------------------------------------*/

; /* Wiki */
; TODO
; ^w:: 

;*-------------------------------------------------------------------------------------------------------*/

; /* deadcells */

#ifWinActive, ahk_exe deadcells.exe

; game doesn't allow to use semicolon, so this remap to page up.
`;::PgUp
return

;*-------------------------------------------------------------------------------------------------------*/

; /* apex */

#ifWinActive, ahk_exe r5apex.exe

; jump w/ wheel up
^WheelDown::
SendInput {space}
return

; mute game shortcut while landing cause is too loud
Process, Exist, r5apex.exe
{
^M::
run nircmd.exe muteappvolume r5apex.exe 2 
return
}
return

;*-------------------------------------------------------------------------------------------------------*/

; /* krita */

#ifWinActive, ahk_exe krita.exe
; title bar kinda sucks remove it //TODO make title same color as theme

;*-------------------------------------------------------------------------------------------------------*/

; # @eduwz | Send me Nudes 
