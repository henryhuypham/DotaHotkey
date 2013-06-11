RightClickCast(skillNum)
{	SysGet, ScrW, 0
	SysGet, ScrH, 1

	SkillPad:= ScrW/75
	SkillW	:= ScrW/17.6
	SkillH	:= ScrH/13.2
	MsPosW	:= ScrW - SkillPad - (4-skillNum)*SkillW - SkillW/2
	MsPosH	:= ScrH - SkillH/2

	MouseGetPos iMousePosX, iMousePosY 
	Send {ClickRight %MsPosW%, %MsPosH%}
	MouseMove %iMousePosX%, %iMousePosY%

	return
}
AutoCast(key, castNum) {
	If (A_PriorHotKey = key AND A_TimeSincePriorHotkey < 500) {
		MouseGetPos iMousePosX, iMousePosY 
		Send {ClickRight %iMousePosX%, %iMousePosY%}
		RightClickCast(castNum)
	}
	else {
		Send %key%
	}
	return
}

+Enter::
	Send +{Enter}
	Suspend on
	return
Enter::
	Suspend toggle
	Send {Enter}
	return
+::
	Run "Control.ahk"
	ExitApp
^=::Suspend

y::Numpad8
z::Numpad7
Space::Numpad1
b::Numpad2
x::Numpad4
g::Numpad5
