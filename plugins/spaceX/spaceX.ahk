 spaceX:
;       ; normal模式（必需）
;     vim.SetMode("normal", " spaceX")

; ;normal模式及快捷键
;   vim.mode("normal", "spaceX")

;     vim.map("hh","回车键","spaceX")
; return


; 回车键:
; Send {Enter}
; Return

;Space+a:回车键
;Space+b:
;Space+c:复制
;Space+d:删除
;Space+e:ESC
;Space+f:
;Space+g:listary
;Space+h:左
;Space+i:下一页
;Space+j:下
;Space+k:上
;Space+l:右
;Space+m:
;Space+n:
;Space+o:
;Space+p:
;Space+q:
;Space+r:
;Space+s:
;Space+t:TC
;Space+u:上一页
;Space+v:粘贴
;Space+w:关闭窗口
;Space+x:剪切
;Space+y:
;Space+z:撤销

Space:: Send {Space}     ;保留空格键自身功能
Space & `;:: Send {Enter}   ;顿号为转义符
;--------窗口控制
  Space & ':: send {F11}               ;开启/关闭程序(窗口)全屏
  Space & q:: send !{F4}               ;Alt+F4——关闭程序（退出应用）
  Space & w:: Send ^w                  ;Ctrl+w——关闭窗口标签
  Space & f:: send #{Tab}              ;开启窗口视图
  ; Space & f & :: send !{Tab}            ;Alt+Tab——程序切换
  Space & e:: Send {Esc}

;------移动导航
  Space & h:: Send {left}                 ;HJKL方向键：左
  Space & j:: Send {down}               ;HJKL方向键：下
  Space & k:: Send {up}                   ;HJKL方向键：上
  Space & l:: Send {right}                 ;HJKL方向键：右
  Space & n:: Send {PgUp}               ;上一页
  Space & m:: Send {PgDn}                ;下一页
  Space & u:: Send {Home}                ;<HOME键>
  Space & o:: Send {End}                ;<END键>

;------Windows内容选择功能
  ; Space & o:: Send +{Home}            ;选择当前位置到行首的文字
  ; Space & p:: Send +{End}             ;选择当前位置到行末的文字
  Space & ,::Send ^+{Left}            ;从当前位置向左选择文字
  Space & .::Send ^+{Right}           ;从当前位置向右选择文字

  ;从光标当前位置向上选择内容
  ;从光标当前位置向下选择内容

;------Windows编辑功能
Space & a:: Send {Enter}              ;左手回车键
Space & s:: Send ^s
Space & d:: Send {Backspace}          ;退格键
Space & z:: Send ^z                       ;Ctrl+z——撤销
Space & x:: Send ^x                       ;Ctrl+x——剪切
Space & c:: Send ^c                       ;Ctrl+c——复制
Space & v:: Send ^v                       ;Ctrl+v——粘贴
Space & y:: Send ^y                       ;Ctrl+y——



;--------自定义程序
Space & g::    ;listary
  DetectHiddenWindows, on
  IfWinNotExist ahk_exe Listary.exe
    Run "D:\Apps\Listary-5.0.2\Listary.exe"
    ;Run "%AppsPath%\Laufe\Lau55fe.exe"
  Else
    ; Send +{space}
    send !+f
    ; 双击ctrl
  Return

;Space & o:: Send #n ;onenote
; Space & g::    ;——启动Laufe
;   DetectHiddenWindows, on
;   IfWinNotExist ahk_class WindowsForms10.Window.8.app.0.378734a
;     Run "d:\Apps\Laufe\Laufe.exe"
;     ;Run "%AppsPath%\Laufe\Laufe.exe"
;   Else
;     send  #``                                      ;Win+`——启动Laufe
;     ;(因为`为AHK的一个转义符，所以此处第一个`是将`变为普通的字符）
;     WinGetPos,,, Width, Height, A
;     WinMove, A,, (A_ScreenWidth/2)-(Width/2), (A_ScreenHeight/2)-(Height/2)
;   Return
Space & t::    ;用于控制TC
    DetectHiddenWindows, on
    IfWinNotExist ahk_class TTOTAL_CMD
    Run "d:\Apps\TC-9.0\Totalcmd.exe"
  Else
    IfWinNotActive ahk_class TTOTAL_CMD
    WinActivate
  Else
    WinMinimize
    Return
Space & b::    ;打开everything：未启动则启动之，未激活则激活之，已正常则最小化。
  DetectHiddenWindows, on
  IfWinNotExist Everything ahk_class EVERYTHING
  Run "D:\Apps\Portable\everything-1.3.3.653\Everything.exe"
  Else
    IfWinNotActive Everything ahk_class EVERYTHING
    WinActivate
  Else
    WinMinimize
  Return

;---------.<重映射主键盘区第1排按键："~"——"+">.--------------
; Space & ~:: send
Space & 1:: send +1                  ;输入数字1上的特殊符号：！
Space & 2:: send +2                  ;输入数字2上的特殊符号：@
Space & 3:: send +3                  ;输入数字3上的特殊符号：#
Space & 4:: send +4                  ;输入数字4上的特殊符号：$
Space & 5:: send +5                  ;输入数字5上的特殊符号：%
Space & 6:: send +6                  ;输入数字6上的特殊符号：^
Space & 7:: send +7                  ;输入数字7上的特殊符号：&
Space & 8:: send +8                  ;输入数字8上的特殊符号：*
Space & 9:: send +9                  ;输入数字9上的特殊符号：(
Space & 0:: send +0                  ;输入数字0上的特殊符号：)
