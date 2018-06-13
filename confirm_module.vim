
fu Curses_search()
if search("curses") == 0
    echo 'curses not found'
else
    echo 'curses found'
    badd ~/git/info/curses_functions.txt
    source ~/git/vim_files/curses.vim
    loadview
endif
endfu

autocmd VimEnter * call Curses_search()

fu Os_search()
if search("os") == 0
    echo 'os not found'
else
    echo 'os found'
    badd ~/git/info/os_functions.txt
    source ~/git/vim_files/os.vim
    loadview
endif
endfu

autocmd VimEnter * call Os_search()
