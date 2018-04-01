"save kv and py file
fu Kivyhelp()
    echo 'KivyName(name) #saves current files as name.py and name.kv'
    echo 'Kivy() #imports basic kivy classes and sets up a basic class'
endfu

fu KivyName(name)
    execute 'b! main.py'
    execute 'w!' .  a:name . ".py"
    redraw
    sleep 100m
    execute 'b! main.kv'
    execute 'w!' .  a:name . ".kv"
endfu

"import kivy
fu Kivy()
    put = 'from kivy.app import App'
    put = 'from kivy.uix.boxlayout import BoxLayout'
    put = 'class box(BoxLayout):'
    put = '    pass'
    put = ''
    put = 'class test(App):'
    put = '    def build(self):'
    put = '        pass'
    put = '        #return file_name()'
    put = '' 
    put = 'if __name__ == \"__main__\":' 
    put = '    test().run()'
endfu

