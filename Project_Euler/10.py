# Сумма простых чисел меньше 10 равна 2 + 3 + 5 + 7 = 17.
#
# Найдите сумму всех простых чисел меньше двух миллионов.

number = 1
summ=0
while True:
    number += 1
    flag = True
    for i in range(2,int(number**0.5)+1):
        if number % i ==0:
            flag = False
            break
    if flag == True:
        summ += number
        # print(number)
        if number > 2_000_000:
            print(summ-number)
            exit()