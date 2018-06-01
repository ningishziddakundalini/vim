fu Search()
if search("curses") == 0
    echo 'curses not found'
else
    echo 'curses found'
    badd /vim/curses
    "loadview
    normal gg
endif
endfu

autocmd VimEnter * call Search()

fu Curses()
    badd /vim/curses_shortcuts
    put = 'import curses'
    put = 'from curses import panel'
    put = 'from curses import wrapper'
    put = '' 
    put = 'def main(stdscr):'
    put = '    stdscr = curses.initscr()'
    put = '' 
    put = '    curses.endwin()'
    put = 'wrapper(main)'
endfu

