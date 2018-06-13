
fu Curses_search()
if search("curses") == 0
    echo 'curses not found'
else
    echo 'curses found'
    badd ~/git/info/curses_functions.txt
    loadview
endif
endfu

autocmd VimEnter * call Curses_search()

fu Curses()
    badd /vim_files/curses_functions.txt
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

fu Curses_display_terminal()
    put = 'def display_terminal(arg):'
    put = '    curses.endwin()'
    put = '    win2.erase() # makes sure window is realy gone'
    put = '    os.system(arg)'
    put = '    win2.getch()'
    put = '    curses.initscr()'
    put = '    win2.clear()'
endfu

fu Curses_layout()
    put = '    def layout(arg1, arg2):'
    put = '        y = stdscr.getmaxyx()[0]'
    put = '        x = stdscr.getmaxyx()[1]'
    put = '        win_y = int(round(y * arg1, 0))'
    put = '        win_x = int(round(x * arg2, 0))'
    put = '        return win_y,win_x'
endfu

fu Curses_panel()
    put = '    def panel_setup(h,l, y,x, *args):'
    put = '        win = curses.newwin(h,l, y,x)'
    put = '        win.box(*args)'
    put = '        pan = curses.panel.new_panel(win)'
    put = '        return win,pan'
endfu

fu Curses_addstr()
    put = '    def for_addstr(widget, iterable):'
    put = '        for i, x in enumerate(iterable):'
    put = '            widget.addstr(i ,0, x )'
endfu
