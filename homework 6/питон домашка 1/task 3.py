# Напишите программу, которая запрашивает у
# пользователя температуру в градусах Цельсия, переводит её в градусы
# Фаренгейта и выводит результат на экран.
temperature_c = float(input("Введите температуру в градусах Цельсия: "))
temperature_f = (temperature_c * 9 / 5) + 32
temperature_c_str = str(temperature_c)
temperature_f_str = str(temperature_f)
print(f"{temperature_f} - это {temperature_c}")
