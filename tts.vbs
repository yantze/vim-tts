filepath = wscript.arguments(0)
Set fso = CreateObject("scripting.filesystemobject")
Set fread=fso.OpenTextFile(filepath,1)
str=fread.readall
CreateObject("SAPI.SpVoice").Speak str

