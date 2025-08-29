shopping_list = ["milk", "bread", "eggs", "butter", "apples"]
print("Список покупок:")
for i in range (5):
    # использовала функцию range() в цикле for, чтобы указать нумерацию
    print(f"{i + 1}. {shopping_list[i]}")
# прописала i+1 т к нумерация начинается с нуля
# в print использовала f (формативную строку)