def calculate_average_score(scores, ignore_lowest=False):
    if not scores:
        return 0
        # Если список пустой, то будет возвращаться значение 0

    scores_copy = scores[:]
    # скопировала список, чтобы не изменять оригинад

    if ignore_lowest and len(scores_copy) > 1:
        scores_copy.remove(min(scores_copy))



    average = sum(scores_copy) / len(scores_copy)
    # вычисляю средний балл
    return round(average, 2)
# округляю до двух знаков
student_data = [
    {'name': 'Алексей', 'scores': [85, 92, 78, 95]},
    {'name': 'Марина', 'scores': [65, 70, 58, 82]},
    {'name': 'Светлана', 'scores': [98, 95, 100]}
]
# данные студентов

print(" Средние баллы (все оценки):")
for student in student_data:
    avg = calculate_average_score(student['scores'])
    print(f"{student['name']}: {avg}")

print("Средние баллы (без худшей оценки):")
for student in student_data:
    avg = calculate_average_score(student['scores'], ignore_lowest=True)
    print(f"{student['name']}: {avg}")
