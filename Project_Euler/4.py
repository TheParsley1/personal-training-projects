# Число-палиндром с обеих сторон (справа налево и слева направо) читается одинаково.
# Самое большое число-палиндром, полученное умножением двух двузначных чисел – 9009 = 91 × 99.
# Найдите самый большой палиндром, полученный умножением двух трехзначных чисел.

a = 999
b = 999
for i in range(a, 99, -1):
    for i1 in range(b, 99, -1):
        ab = str(i*i1)
        if ab == ab[::-1]:
            print(i, i1, ab)
            exit()
