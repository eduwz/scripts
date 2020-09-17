#NoEnv
#SingleInstance force
#Persistent
SetWorkingDir, %A_scriptdir% 
; dependency https://www.nirsoft.net/utils/nircmd.html

; /* media.ahk */

#If WinExist("ahk_exe Spotify.exe")
{
	^Left::Media_Prev
	return
	
	^Right::Media_Next
	return
	
	^Space::Media_Play_Pause
	return

	^Up::
	run nircmd.exe changeappvolume Spotify.exe 0.2
	return

	^Down::
	run nircmd.exe changeappvolume Spotify.exe -0.2
	return

	^M::
	run nircmd.exe muteappvolume Spotify.exe 2 
	return
}



; @eduwz