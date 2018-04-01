"save kv and py file
fu KivyName(arg)
    execute 'b! main.py'
    execute 'w!' .  a:arg . ".py"
    redraw
    sleep 100m
    execute 'b! main.kv'
    execute 'w!' .  a:arg . ".kv"
endfu

"import kivy
fu Kivy()
    put = 'from kivy.app import App'
    put = 'from kivy.uix.boxlayout import BoxLayout'
    put = 'class file_name(BoxLayout):'
    put = '    pass'
    put = ''
    put = 'class App(App):'
    put = '    def build(self):'
    put = '        pass'
    put = '        #return file_name()'
    put = '' 
    put = 'if __name__ == \"__main__\":' 
    put = '    App().run()'
endfu

