﻿#Requires Autohotkey v2.0
#SingleInstance Force
#Include complete_application\convert\ConvertFuncs.ahk
#Include complete_application\convert\_menu_handler_mod.ahk
;AutoGUI 2.5.8
;Auto-GUI-v2 credit to autohotkey.com/boards/viewtopic.php?f=64&t=89901
;AHKv2converter credit to github.com/mmikeww/AHK-v2-script-converter
exe := "`"" A_ScriptDIr "\complete_application\AutoHotKey Exe\AutoHotkeyV1.exe`" "
autogui := "`"" A_ScriptDIr "\complete_application\AutoGUI.ahk`""
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
       path_to_convert := FileRead(A_ScriptDir "\log.txt")
       inscript := FileRead(path_to_convert)
       outscript := Convert(inscript)
       outfile := FileOpen(path_to_convert, "w", "utf-8")
          
       ;######################################################################################################################
       ;##### AddedFuncs for Converter GUI Combination(): #####
       ;######################################################################################################################

       ;######################################################################################################################
       ;##### AddedFuncs for Converter GUI Combination(): #####
       ;######################################################################################################################
       outfile.Write(outscript)
       outfile.Close()

       add_menuhandler(path_to_convert)
        FileMove(A_ScriptDir "\log.txt", A_ScriptDir "\temp.txt", 1)
        }
    else {
        Sleep(100)
    }
}
ExitApp