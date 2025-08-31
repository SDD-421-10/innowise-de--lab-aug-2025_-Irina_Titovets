email = " USER@DOMAIN.COM "
# исходная строка
clean_email = email.strip().lower()
# очищаю и форматирую
username, domain = clean_email.split("@")
# разделяю на имя пользователя и домен
result = f"Username: {username}, Domain: {domain}"
# форматирую с помощью f-строки
print(result)
