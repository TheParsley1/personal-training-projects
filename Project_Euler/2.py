number_fibonachi = 1
number_fibonachi_old = 0
sum_number_fibonachi = 0
while number_fibonachi < 4_000_000:
    number_fibonachi += number_fibonachi_old
    number_fibonachi_old = number_fibonachi - number_fibonachi_old
    sum_number_fibonachi += number_fibonachi
print(sum_number_fibonachi-number_fibonachi)


# Каждый следующий элемент ряда Фибоначчи получается при сложении двух предыдущих. Начиная с 1 и 2, первые 10 элементов будут:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
# Найдите сумму всех четных элементов ряда Фибоначчи, которые не превышают четыре миллиона.