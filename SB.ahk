#SingleInstance, Force
#MaxThreadsPerHotkey, 2
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

toggle := 0

ToolTip, Slap Battles, 75, 980, 2
ToolTip, Status On, 75, 1000, 1

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

;	toggle		===============================================================================

{
F1::
Suspend, Permit
if toggle = 0
    {
        toggle := 1
Suspend, on
ToolTip, Status Off, 75, 1000, 1
}
  Else
    {
        toggle := 0
		ToolTip, Status On, 75, 1000, 1
  Suspend, Off
}
 Return
}

;	functions	================================================================================

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