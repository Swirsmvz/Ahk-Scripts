; By holding 'q', this script will repeatedly send 'e', creating a spamming effect
; Feel free to customize it to your liking. I find it especially useful in SB and Project Lazarus

#SingleInstance, Force
#NoEnv

WinMinimizeAll
WinActivate, Roblox
if WinActive("Roblox")
	{
	WinMaximize, Roblox
	}
else
	{
	msgbox, , , Roblox dont found, 1.5
	exitapp
	}
    MsgBox, ,abcdhijdfvi9rhvjriobjtg ,this only to solve bug with Windows, 0.5

    Sleep, 100

	WinGet, activeWindow, ID, A
    if (!activeWindow)
        return
    WinGetPos, winX, winY, winWidth, winHeight, ahk_id %activeWindow%
    SysGet, screenWidth, 78
    SysGet, screenHeight, 79
    if (winX = 0 && winY = 0 && winWidth = screenWidth && winHeight = screenHeight) {
    } else {
        Send, {F11}
    }
 
Sleep, 100

    WinGetPos, winX, winY, winWidth, winHeight, ahk_id %activeWindow%
    SysGet, screenWidth, 78
    SysGet, screenHeight, 79
    winWidthRatio := winWidth / screenWidth
    winHeightRatio := winHeight / screenHeight
     (winX = 0 && winY = 0 && winWidthRatio = 1 && winHeightRatio = 1) 

Sleep, 100

eX := winWidth * 0.03
eY := winHeight * 0.9
toggle := 0

ToolTip, On, eX, eY, 1

{
F2::
Suspend, Permit
Reload
Return
}

{
F3::
Suspend, Permit
ExitApp, [ ExitCode]
}

{
F1::
Suspend, Permit
if toggle = 0
    {
        toggle := 1
Suspend, on
ToolTip, Off, eX, eY, 1
}
  Else
    {
        toggle := 0
		ToolTip, On, eX, eY, 1
  Suspend, Off
}
 Return
}

{
	q::
	Send, e
	Return
  }