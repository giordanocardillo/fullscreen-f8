#Persistent
#SingleInstance Force
#InstallKeybdHook

Menu, Tray, NoStandard
Menu, Tray, Add, &Info, About
Menu, Tray, Add
Menu, Tray, Add, &Exit, ExitProg
Menu, Tray, Default,&Info

quiet := false

for n, param in A_Args {
    if param in /quiet,/q,--quiet
		quiet = true
}

if !quiet
	TrayTip, Full Screen F8, Press F8 to toggle RDP full screen,,1
	
F8::^!CtrlBreak

Exit

About:
TrayTip, Full Screen F8, Giordano Cardillo - 2020,,1
Exit
ExitProg:
ExitApp,0