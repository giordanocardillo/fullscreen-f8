#Persistent
#SingleInstance Force
#InstallKeybdHook

Menu, Tray, NoStandard
Menu, Tray, Add, &Info, about
Menu, Tray, Add
Menu, Tray, Add, &Exit, exitApp
Menu, Tray, Default, &Info

config := { isQuiet: false }

checkParams()

if (!config.isQuiet) {
  TrayTip, Full Screen F8, Press F8 to toggle RDP full screen, , 1
}

supportedParams(){
  MsgBox, 64, Info, Supported parameters:`n`n/q | /quiet | --quiet: Silence starting tooltip
  ExitApp, 1
}

checkParams() {
  global config
  for n, param in A_Args {
    Switch param {
      Case "/quiet", "/q", "--quiet", "-q":
        config.isQuiet := true
        break
      Default:
        supportedParams()
    }
  }

}

about() {
  TrayTip, Full Screen F8, Created by Giordano Cardillo, , 1
}

exitApp() {
  ExitApp, 0
}

F8::
  Send, ^!{CtrlBreak}
  Exit
