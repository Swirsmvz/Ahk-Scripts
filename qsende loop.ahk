; This script will rapidly press the 'e' key
; If you experience lag, try removing 'SendMode, Input' or adding a sleep command (line 69)
; Feel free to modify the script to suit your needs

#SingleInstance, Force
#MaxThreadsperHotkey 2
#NoEnv
Sendmode, Input

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

lX := winWidth * 0.03
lY := winHeight * 0.85
Abc := 20

Lp := False
SetTimer, Acc, Off
Stime := 0

ToolTip, Loop Off, lX, lY, 1

F2:: Reload
F3:: ExitApp
F1::
    if (!Lp) {
        Lp := True
        Tooltip, Loop On, lX, lY, 1
        Stime := A_TickCount
        SetTimer, Acc, 1000
        Loop {
            if (!Lp)
                break
        Send, e
        ;Example Sleep, 50
        }
    } else {
        Lp := False
        Tooltip, Loop Off, lX, lY, 1
        SetTimer, Acc, Off
    }

Acc:
    if (Lp) {
        c++ 
        h := Floor(c / 3600) 
        m := Floor((c - (h * 3600)) / 60) 
        s := Mod(c, 60) 
        Tooltip, Elapsed time: %h% h %m% m %s% s, lX, lY + Abc, 2
    }       else {
            Lp := False
            SetTimer, Acc, Off
            c := 0 
    }
Return