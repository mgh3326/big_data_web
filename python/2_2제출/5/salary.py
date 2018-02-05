
import Calc_func

time = int(input("몇시간 일하셧습니까? : "))
amount = int(input("당신의 시간당 임근은 얼마 입니까? : "))

print("당신의 임금은 %d" % Calc_func.calc_monthly_salary(time, amount))
