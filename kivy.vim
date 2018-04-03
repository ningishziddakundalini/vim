"save kv and py file
fu Kivyhelp()
    echo 'KivyName(name) #saves current files as name.py and name.kv'
    echo 'Kivy() #imports basic kivy classes and sets up a basic class'
endfu

fu KivyName(name)
    execute '%s/\<main\>/' .  a:name . "/g"
    execute 'b! main.py'
    execute 'w! python2.7_projects/' .  a:name . ".py"
    redraw
    sleep 100m
    execute 'b! main.kv'
    execute 'w! python2.7_projects/' .  a:name . ".kv"
    redraw
    sleep 100m
    execute 'b! main.py'
    redraw
    sleep 100m
    normal u
endfu

"import kivy
fu Kivy()
    put = 'from kivy.app import App'
    put = 'from kivy.uix.boxlayout import BoxLayout'
    put = 'class box(BoxLayout):'
    put = '    pass'
    put = ''
    put = 'class main(App):'
    put = '    def build(self):'
    put = '        pass'
    put = '        #return BoxLayout()'
    put = '' 
    put = 'if __name__ == \"__main__\":' 
    put = '    main().run()'
endfu

