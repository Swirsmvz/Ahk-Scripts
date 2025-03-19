#SingleInstance, Force
#NoEnv  
#MaxThreadsperHotkey 2
SendMode Input 
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

 ; =================================================================================================

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

ToolTipsX := winWidth * 0.03
ToolTipsY := winHeight * 0.8
Abc := 20


ToolTip, Grace, ToolTipsX, ToolTipsY, 1
ToolTip, Press F1 to start, ToolTipsX, ToolTipsY + Abc, 2
ToolTip, Press F2 to reload, ToolTipsX, ToolTipsY + (2 * Abc), 3
ToolTip, Press F3 to exit, ToolTipsX, ToolTipsY + (3 * Abc), 4

;   Keys        ===================================================================================

F2:: Reload
F3:: ExitApp
F1::

;=================================================================================================

    toggle := !toggle
    
    if (toggle) {

        ToolTip, Press F1 to stop, ToolTipsX, ToolTipsY + Abc, 2
        Loop {
            Send, {e down}
            Sleep, 500
            Send, {e up}
            Sleep, 10
            if (!toggle) {

                ToolTip, , , ,2
                break
            }
        }
    } else {

 ;idk 

    }
    

ToolTip, Press F1 to start, ToolTipsX, ToolTipsY + Abc, 2