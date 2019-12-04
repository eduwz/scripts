#Persistent
#NoEnv

^w::
clipboard := ""
Send ^c
ClipWait

StringReplace, clipboard, clipboard,Rarity,-,all

MsgBox, %clipboard%
return

; "https://pathofexile.gamepedia.com/"