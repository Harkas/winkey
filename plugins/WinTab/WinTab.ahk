WinTab:
      ; 定义注释
    vim.comment("<WinTab_Lift>", "向左移动")
    vim.comment("<WinTab_Right>", "向右移动")
    vim.comment("<WinTab_Up>", "向上移动")
    vim.comment("<WinTab_Down>", "向下移动")
    vim.comment("<WinTab_MoveToLastDesk>", "移动到上一桌面")
    vim.comment("<WinTab_MoveToNextDesk>", "移动到下一桌面")
    vim.comment("<WinTab_NewDesk>","新建桌面")
    vim.comment("<WinTab_PrintScrern>","屏幕截图")
    vim.comment("<WinTab_CloseWindow>", "关闭选中窗口")
    vim.comment("<WinTab_EnterWindow>", "进入选中窗口")
    vim.comment("<Wintab_Help>", "显示自定义快捷键列表")

    vim.SetWin("WinTab", "MultitaskingViewFrame")

     ; normal模式（必需）
    vim.SetMode("normal", "WinTab")

    vim.map("s", "<WinTab_Lift>", "WinTab")
    vim.map("f", "<WinTab_Right>", "WinTab")
    vim.map("e", "<WinTab_Up>", "WinTab")
    vim.map("d", "<WinTab_Down>", "WinTab")
    vim.map("x", "<WinTab_MoveToLastDesk>", "WinTab")
    vim.map("v", "<WinTab_MoveToNextDesk>", "WinTab")
    vim.map("n", "<WinTab_NewDesk>", "WinTab")
    vim.map("p", "<WinTab_PrintScrern>", "WinTab")
    vim.map("c", "<WinTab_CloseWindow>", "WinTab")
    vim.map("a", "<WinTab_EnterWindow>", "WinTab")
    ; vim.map("{space}", "<WinTab_EnterWindow>", "WinTab")
    vim.map("h", "<Wintab_Help>", "WinTab")
return

	<Wintab_Help>:
Hotkeylist=
(
     ========★ win10 Taskview 快捷键列表★========



Space+f:          打开Taskview任务切换窗口 (Win+Tab)

           n:            创建新的虚拟桌面 (Win+Ctrl+D)

           c:            关闭当前虚拟桌面 (Win+Ctrl+F4)

           x:            切换到上一个虚拟桌面 (Win+Ctrl+⬅)

           v:            切换到下一个虚拟桌面 (Win+Ctrl+➡)

           s:            向左移动

           f:            向右移动

           e:            向上移动

           d:            向下移动

           a:            选择

           p:            屏幕截图

           h:            打开自定义快捷键列表
           Alt+Tab：      切换窗口，按住ALT不松时`n会有一个全新的界面方便你在不同的窗口间选择
)
; 标题
MsgBox, 0, win10 Taskview 快捷键列表, %Hotkeylist%,
Sleep, 1000
send 	^!{Tab}
return


<WinTab_EnterWindow>:
	send {Enter}
	return


<WinTab_Lift>:
	send {Left}
		Return

<WinTab_Right>:
	send {Right}
		Return

<WinTab_Down>:
		send {Down}
		Return

<WinTab_Up>:
		send {Up}
		Return

 <WinTab_MoveToLastDesk>:
 		send #^{Left}
 	Return

 <WinTab_MoveToNextDesk>:
 	send #^{Right}
 	Return

<WinTab_NewDesk>:
		send #^d
		return

<WinTab_PrintScrern>:
		send #{PrintScreen}
	Return

<WinTab_CloseWindow>:
		send {Enter}
		Sleep, 500
		Send, !{F4}
		Sleep, 1000
		Send, #{Tab}
		Return
