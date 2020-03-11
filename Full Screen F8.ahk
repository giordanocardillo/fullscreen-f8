#Persistent
#SingleInstance Force
#InstallKeybdHook

TrayTip,Full Screen F8,Press F8 to toggle RDP full screen,,1

Menu, Tray, NoStandard
Menu, Tray, Add,&Info,About
Menu, Tray, Add
Menu, Tray, Add,&Exit,ExitProg
Menu, Tray, Default,&Info
Exit

F8::^!CtrlBreak

About:
TrayTip,Full Screen F8,Giordano Cardillo - 2020,,1
Exit
ExitProg:
ExitApp,0