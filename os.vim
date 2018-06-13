
fu Os_search()
if search("os") == 0
    echo 'os not found'
else
    echo 'os found'
    badd ~/git/info/os_functions.txt
    loadview
endif
endfu

autocmd VimEnter * call Os_search()

fu Os()
    badd /vim_files/os_functions
    put = 'import os'
endfu
