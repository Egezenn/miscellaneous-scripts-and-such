#Warn
#NoEnv
#SingleInstance, Force
SendMode, Input
SetBatchLines, -1
SetWorkingDir, %A_ScriptDir%

AppsKey::Send, {Del}{Space}
>^Numpad0::Send, {Del}│
Numpad0::Send, {Del}─
Numpad1::Send, {Del}└
Numpad2::Send, {Del}┴
Numpad3::Send, {Del}┘
Numpad4::Send, {Del}├
Numpad5::Send, {Del}┼
Numpad6::Send, {Del}┤
Numpad7::Send, {Del}┌
Numpad8::Send, {Del}┬
Numpad9::Send, {Del}┐

CapsLock::Suspend
!CapsLock::Reload