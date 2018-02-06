product = {"비누", "칫솔", "샴푸", "치약", "로션"}
sale = {"칫솔": 5, "치약": 4, "로션": 5}
customer = {"칫솔": 4, "치약": 4}
good = []
bad = []
sale_key = set(sale.keys())
customer_key = set(customer.keys())
good.append(sale_key & customer_key)
bad.append((product - sale_key) & (product - customer_key))
print("우수 제품은 : " + str(good))
print("판매 중지 제품은 : " + str(bad))
