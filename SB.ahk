; This script is just a set of shortcuts I use in SB
; q:: Holding 'q' will repeatedly send 'e', creating a spamming effect
; g:: Quick reset. May not work if you press keys while the script is running
; x:: Same as q::, but instead of sending 'e', it sends 'space'. This is specifically for the Snowroller

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

toggle = 0
Abc := 20
sX := winWidth * 0.03
sY := winHeight * 0.85

ToolTip, Slap Battles, sX, sY, 1
ToolTip, Status On, sX, sY + Abc, 2

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
ToolTip, Status Off, sX, sY + Abc, 2
}
  Else
    {
        toggle := 0
		ToolTip, Status On, sX, sY + Abc, 2
  Suspend, Off
}
 Return
}

{
	q::
	Send, e
	Return
  }

{
	g::
	Send, {Esc},{r},{enter}
	Return
}

{
 x::
 Send, {Space}
 Return
}