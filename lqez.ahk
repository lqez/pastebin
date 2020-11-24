#NoEnv                       ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn                      ; Enable warnings to assist with detecting common errors.
SendMode Input               ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

#-::–                        ; Win + -(dash)         to En-dash
#+-::—                       ; Win + Shift + -(dash) to Em-dash
#9::〈                       ; Win + 9               to Left single arrow bracket
#0::〉                       ; Win + 0               to Right single arrow bracket
#+9::《                      ; Win + Shift + 9       to Left double arrow bracket
#+0::》                      ; Win + Shift + 0       to Right double arrow bracket
#[::‘                        ; Win + [               to Opening single apostrophe
#]::’                        ; Win + ]               to Closing single apostrophe
#{::“                        ; Win + Shift + [       to Opening double quote
#}::”                        ; Win + Shift + ]       to Closing double quote

#PgUp::SoundSet,+1           ; Win + PageDown        to Volumn up
#PgDn::SoundSet,-1           ; Win + PageDown        to Volumn down
#End::SoundSet,+1,,mute      ; Win + End             to Toggle mute

#^L::DllCall("PowrProf\SetSuspendState", "int", 1, "int", 1, "int", 1) ; Win + Ctrl + L to Suspend
