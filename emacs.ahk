;;
;; An autohotkey script that provides emacs-like keybinding on Windows
;;
#InstallKeybdHook
#UseHook

; The following line is a contribution of NTEmacs wiki http://www49.atwiki.jp/ntemacs/pages/20.html
SetKeyDelay 0

; underscore without shift
vkE2::_

kill_line()
{
  Send {ShiftDown}{END}{SHIFTUP}
  Sleep 50 ;[ms] this value depends on your environment
  Send ^x
  Return
}

#IfWinNotActive, ahk_exe WindowsTerminal.exe
^f::
  Send {Right}
  Return
^d::
  Send {Del}
  Return
^h::
  Send {BS}
  Return
^k::
  kill_line()
  Return
+^f::
  Send ^f
  Return
^y::
  Send ^v
  Return
^a::
  Send {HOME}
  Return
^e::
  Send {END}
  Return
^p::
  Send {Up}
  Return
^n::
  Send {Down} 
  Return
^b::
  Send {Left}
  Return
#IfWinNotActive

; toggle on/off with autohotkey
;^o::
;  Suspend, Toggle
;  Return
