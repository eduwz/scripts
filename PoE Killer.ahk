; PoE Killer or any App really.
; use "PathOfExile_x64.exe" for non steam.

F6:: ; this is the key if you want to rebind.

WinGet, Path, ProcessPath, A
SplitPath, Path, ProcessName
  ; If ProcessName = PathOfExile_x64Steam.exe ; uncomment this if you only want to kill PoE.
Loop
{
 Process, Exist, %ProcessName%
 If ErrorLevel = 0
    break
 Process, Close, %ProcessName%
 ; MsgBox, %Path%`n`n%ProcessName% ; uncomment this if you want a popup confirmation.
}
return

; @eduwz
