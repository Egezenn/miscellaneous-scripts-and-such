#Warn
#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

CoordMode, Mouse, Screen
CoordMode, Pixel, Screen

Loop {
    MouseGetPos, posX, posY
    PixelGetColor, color, %posX%, %posY%
    color := StrReplace(color, "0x")
    ToolTip, %posX%`n%posY%`n%color%

    If (GetKeyState("LCtrl", "P")) {
        If (GetKeyState("LButton", "P")) {
            Clipboard=%posX%, %posY%
        }
    }

    If (GetKeyState("LShift", "P")) {
        If (GetKeyState("LButton", "P")) {
            Clipboard=%color%
        }
    }
}

;~ -----------------------------------------------------

!+CapsLock::Suspend
+<^>!CapsLock::ExitApp