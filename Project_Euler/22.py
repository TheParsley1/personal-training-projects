# Используйте names.txt (щелкнуть правой кнопкой мыши и выбрать 'Save Link/Target As...'), текстовый файл размером 46 КБ, содержащий более пяти тысяч имен. Начните с сортировки в алфавитном порядке. Затем подсчитайте алфавитные значения каждого имени и умножьте это значение на порядковый номер имени в отсортированном списке для получения количества очков имени.
# Например, если список отсортирован по алфавиту, имя COLIN (алфавитное значение которого 3 + 15 + 12 + 9 + 14 = 53) является 938-м в списке. Поэтому, имя COLIN получает 938 × 53 = 49714 очков.
# Какова сумма очков имен в файле?

import string
text1 = open("22.txt")
text1 = text1.read()
text1 = text1.split(',')
text1 = sorted(text1)

count = 0
count2 = 0
for i in text1:
    count += 1
    count1 = 0
    i = i.replace('"', '')
    for i1 in i:
        i1 = i1.lower()
        i1 = string.ascii_lowercase.index(i1)
        count1 += i1+1
    count2 += count1*count
print(count2)