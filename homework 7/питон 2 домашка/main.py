scores = [75, 88, 95, 0, 100]
total = 0
for score in scores:
    if score < 0:
        continue
        # условие если score отрицательный, мы его пропускаем с помощью continue
    if score == 0:
        print("Обнаружен 0. Подсчёт прерван.")
        break
        # если score 0, то мы прерываем цикл с помощью break
    total += score
    print(f"Добавлен балл: {score}")
else:

    print("Все данные обработаны корректно.")

print(f"Итоговая сумма баллов:{total}")