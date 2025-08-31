def add_vat(price):
    nds = 0.20
    return price + price * nds
# функция по которой добавляется ндс

prices = [1000, 3499, 250]
# список цен

for price in prices:
    final_price = add_vat(price)
    print(f"Цена с НДС: {final_price}")
    # применение функции в цикле
