﻿#Requires Autohotkey v2.0
;AutoGUI 2.5.8
;Auto-GUI-v2 credit to autohotkey.com/boards/viewtopic.php?f=64&t=89901
;AHKv2converter credit to github.com/mmikeww/AHK-v2-script-converter
exe := "`"" A_ScriptDIr "\AutoHotKey Exe\AutoHotkeyV1.exe`" "
autogui := "`"" A_ScriptDIr "\AutoGUI.ahk`""
com := exe autogui
Run(com, , , &PID)
Sleep(1000)
Loop 10 {
    if ProcessExist(PID) {
        break
    }
    else {
        Sleep(1000)
    }
}

path := A_ScriptDir "\log.txt"

if FileExist(path) {
    FileDelete(path)
}

While ProcessExist(PID) {
    if FileExist(A_ScriptDir "\log.txt")
    {
        path := FileRead(A_ScriptDir "\log.txt")
        exe := "`"" A_ScriptDir "\AutoHotKey Exe\AutoHotkeyV2.exe`""
        convertahk := " `"" A_ScriptDir "\convert\v2converter.ahk`" "
        command := exe convertahk "`"" path "`""
        Run(command)
        FileDelete(path)
    }
    else {
        Sleep(100)
    }
}