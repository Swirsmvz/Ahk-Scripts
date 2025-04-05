; The script will open doors for you
; If you also use the 'E' key for other actions in the game, you can change it so it doesnt interfere with the script
; 1:: helps you deal with DoomBringer, also made in a way so that you can use the modifier with pipebomb
; 2:: will only send 4, this is due to the plug modulers
; The key bindings used for the script are:
; crouch: M1
; use object: M2
; holster item: Q

#SingleInstance, Force
#NoEnv  
#MaxThreadsperHotkey 2
SendMode, Input 


WinActivate, Roblox
if WinActive("Roblox")
	{
        WinMinimizeAll
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

HpX := winWidth * 0.03
HpY := winHeight * 0.85
Abc := 20

ToolTip, Grace, HpX, HpY, 1
ToolTip, Press F1 to start, HpX, HpY + Abc, 2

F2:: Reload
F3:: ExitApp
F1::
    Suffer := !Suffer
    if (Suffer) {
        ToolTip, Press F1 to stop, HpX, HpY + Abc, 2
        Loop {
            Send, {e down}
            Sleep, 500
            Send, {e up}
            Sleep, 10
            if (!Suffer) {
                ToolTip, , , ,2
                break
            }
        }
    } else {
        ; i don't know what to say
        ; i don't know what to do
        ; i'm disgusting
}
ToolTip, Press F1 to start, HpX, HpY + Abc, 2
Return


{
    1::
    Send, 3
    Sleep, 100
    Click, R
    Sleep, 100
    Click, R
    Sleep, 100
    Click, R
    Sleep, 100
    Click, R
    Send, q
Return
}

{
    2::
    Send, 4
Return
}