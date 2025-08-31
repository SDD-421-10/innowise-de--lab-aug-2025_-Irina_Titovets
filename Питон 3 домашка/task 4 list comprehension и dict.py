words = ["hello", "world", "python", "code"]
# начальный список
lengths = [len(word) for word in words]
print("Длины слов:", lengths)
# список длин слов
long_words = [word for word in words if len(word) > 4]
print("Слова длиннее 4 символов:", long_words)
# список слов длиннее 4 символов
word_lengths = {word: len(word) for word in words}
print("Словарь слов и их длин:", word_lengths)
# словарь
