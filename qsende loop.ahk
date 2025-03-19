SendMode Input  
SetWorkingDir %A_ScriptDir% 
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

Tooltip, Grace test version 388, 75, 900, 1
ToolTip, Press F1 to start, 75, 920, 2
ToolTip, Press F2 to reload, 75, 940, 3
Tooltip Press F3 to exit, 75, 960, 4

;   Keys        ===================================================================================

F2:: Reload
F3:: ExitApp
F1::

;=================================================================================================

    toggle := !toggle
    
    if (toggle) {

        ToolTip, Press F1 to stop, 75, 920, 2
        Loop {
            Send, e
            if (!toggle) {

                ToolTip, , , ,2
                break
            }
        }
    } else {

        ToolTip, Stopped, , , 2

    }
    

ToolTip, Press F1 to start, 75, 920, 2