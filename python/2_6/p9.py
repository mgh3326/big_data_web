coffee = {"Americano": 2000, "Cafe latte": 2500, "Green Tea latte": 3000, "Mocha latte": 3500}
coffee_key = coffee.keys()

coffee_key_list = (list(coffee_key))

if coffee_key_list.count("Americano")<1:
    print("Americano 는 dictionary에 없습니다.")
else:
    print("Americano 는 dictionary에 있습니다.")

if coffee_key_list.count("Vanila latte")<1:
    print("Vanila latte 는 dictionary에 없습니다.")
else:
    print("Vanila latte 는 dictionary에 있습니다.")