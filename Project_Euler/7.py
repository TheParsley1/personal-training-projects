# Выписав первые шесть простых чисел, получим 2, 3, 5, 7, 11 и 13. Очевидно, что 6-е простое число - 13.
# Какое число является 10001-м простым числом?

number = 1
count=0
while True:
    number += 1
    flag = True
    for i in range(2,int(number**0.5)+1):
        if number % i ==0:
            flag = False
            break
    if flag == True:
        # print(number)
        count += 1
        if count == 10001:
            print(number)
            exit()

