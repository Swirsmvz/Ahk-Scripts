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

lX := winWidth * 0.03
lY := winHeight * 0.9


ToolTip, Off, lX, lY, 1



;   Keys        ===================================================================================

F2:: Reload
F3:: ExitApp
F1::

;=================================================================================================

toggle := !toggle
    
if (toggle) {

    ToolTip, On, lX, lY, 1
    Loop {
      Send, e

        if (!toggle) {

            ToolTip, , , ,1
            break
        }
    }
} else {

; dont know what to do

}

ToolTip, Off, lX, lY, 1