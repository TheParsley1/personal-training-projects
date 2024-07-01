# Каков порядковый номер первого члена последовательности Фибоначчи, содержащего 1000 цифр?
i1 = 1
i2 = 1
count = 0
while True:
    count+=1
    i1 += i2
    i2 = i1-i2
    if len(str(i1)) == 1_000:
        print(len(str(i1)))
        print(count)
        break