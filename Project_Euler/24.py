# Перестановка - это упорядоченная выборка объектов. К примеру, 3124 является одной из возможных перестановок из цифр 1, 2, 3 и 4. Если все перестановки приведены в порядке возрастания или алфавитном порядке, то такой порядок будем называть словарным. Словарные перестановки из цифр 0, 1 и 2 представлены ниже:
# 012   021   102   120   201   210
# Какова миллионная словарная перестановка из цифр 0, 1, 2, 3, 4, 5, 6, 7, 8 и 9?

from itertools import  permutations
import math
str1 = '0123456789'
i1 = 0
for i in permutations(str1):
    i1 +=1
    if i1 == 1_000_000:
        break
print(i)