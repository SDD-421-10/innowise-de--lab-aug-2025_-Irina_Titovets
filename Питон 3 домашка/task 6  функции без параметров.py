import datetime
# импортируем модуль

def show_current_time():
    now = datetime.datetime.now()
    print("Текущие дата и время:", now.strftime("%Y-%m-%d %H:%M:%S"))
    # получаю дату и время
show_current_time()
# вызов функции
