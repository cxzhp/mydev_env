Win7：CapsLock与Ctrl互换  
     
解决方案
1、以下代码保存为 CapsLock2Esc.reg 文件；

########################################################
Windows Registry Editor Version 5.00

[HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Keyboard Layout]
"Scancode Map"=hex:00,00,00,00,00,00,00,00,03,00,00,00,3a,00,1D,E0,1D,E0,3a,00,00,00,00,00 
########################################################

2、双击该文件，弹出框，选“是”；

3、重启系统，完成。


重点解读

重点分析上面代码中的那一长串二进制，为方便分析，拆分为每8位一行，并加上行号，结果如下：

1. 00,00,00,00,
2. 00,00,00,00,
3. 03,00,00,00,
4. 3a,00,01,00,
5. 01,00,3a,00,
6. 00,00,00,00

头两行和最后一行，是固定的，都是8个0。

第3行，表示共更改了多少个按键，本例为3个，怎么算的？从第4行开始，到最末尾行（虽然严格来说末行不算），每行算1个，4、5、6行，刚好3个。

第4行，前后各4位，分别代表某个按键。本例为将3a00的按键映射为0100。3a00代表CapsLock键，0100代表Esc键。

第5行，同理，0100的按键映射为3a00，即Esc映射为CapsLock。

第6行，已经讲了，末行，固定8个0。如果需要增加更多的映射，可以在此行之上，不断加类似4、5行格式的。当然，最后的结果，还是要将各行合为一行的。


附录

部分按键映射对照表，需要查看全部对照，请点击相关资料4。

Escape01 00
Tab0F 00
Caps Lock3A 00
Left Alt38 00
Left Ctrl1D 00
Left Shift2A 00
Left Windows5B E0
Right Alt38 E0
Right Ctrl1D E0
Right Shift36 00
Right Windows5C E0
Backspace0E 00
Delete53 E0
Enter1C 00
Space39 00
Insert52 E0
HOME47 E0
End4F E0
Num Lock45 00
Page Down51 E0
Page Up49 E0
Scroll Lock46 00

还有一个特殊的值——00 00，表示啥也不干，如果要将某个按键禁用，只需映射为00 00。

相关资料：
      1、Archive: Scan Code Mapper for Windows   (http://msdn.microsoft.com/en-us/windows/hardware/gg463447.aspx)
      2、教你玩：在Windows 7或者Vista系统中，如何禁止Caps Lock按键 (http://www.telbeta.com/windows7-disable-caps-lock.html)
      3、Scan Codes Demystified (http://www.quadibloc.com/comp/scan.htm)
	  4、键值对照表 (http://www.doc88.com/p-10453230875.html)
	  5、Win7：CapsLock与Esc互换 (http://xyztony1985.blog.163.com/blog/static/3611782011752420104/)

