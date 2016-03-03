"/* 当新建 .h .c .hpp .cpp 等文件时自动调用SetTitle 函数*/
autocmd BufNewFile *.[ch],*.hpp,*.cpp,*.php exec ":call SetTitle()" 

"/* 加入注释 */
 func SetComment()
     call setline(1,"<?php") 
     call append(line("."),   "\/*==================================")
     call append(line(".")+1,   "*   Copyright (C) ".strftime("%Y")." Baidu.com, Inc. All rights reserved.")
     call append(line(".")+2, "*   ") 
     call append(line(".")+3, "*   filename	:	".expand("%:t")) 
     call append(line(".")+4, "*   author		:	zhouping01")
     call append(line(".")+5, "*   create_time	:	".strftime("%Y-%m-%d")) 
     call append(line(".")+6, "*   desc		:	") 
     call append(line(".")+7, "*")
     call append(line(".")+8, "===================================*/") 
     call append(line(".")+9,"") 
     call append(line(".")+10,"") 
     call append(line(".")+11,"") 
     call append(line(".")+12,"") 
     call append(line(".")+13,"") 
     call append(line(".")+14,"") 
     call append(line(".")+15,"") 
     call append(line(".")+16,"") 
     call append(line(".")+17,"") 
     call append(line(".")+18,"") 
     call append(line(".")+19,"") 
     call append(line(".")+20,"") 
     call append(line(".")+21,"\/* vim: set tabstop=4 shiftwidth=4 expandtab: */") 
 endfunc
 
"/* 定义函数SetTitle，自动插入文件头 */
func SetTitle()
     call SetComment()
     if expand("%:e") == 'hpp' 
  call append(line(".")+8, "#ifndef _".toupper(expand("%:t:r"))."_H") 
  call append(line(".")+9, "#define _".toupper(expand("%:t:r"))."_H") 
  call append(line(".")+10, "#ifdef __cplusplus") 
  call append(line(".")+11, "extern \"C\"") 
  call append(line(".")+12, "{") 
  call append(line(".")+13, "#endif") 
  call append(line(".")+14, "") 
  call append(line(".")+15, "#ifdef __cplusplus") 
  call append(line(".")+16, "}") 
  call append(line(".")+17, "#endif") 
  call append(line(".")+18, "#endif //".toupper(expand("%:t:r"))."_H") 
     elseif expand("%:e") == 'h' 
  call append(line(".")+8, "#pragma once") 
     elseif &filetype == 'c' 
  call append(line(".")+8,"#include \"".expand("%:t:r").".h\"") 
     elseif &filetype == 'cpp' 
  call append(line(".")+8, "#include \"".expand("%:t:r").".h\"") 
     endif
endfunc
