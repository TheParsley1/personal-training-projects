# https://euler.jakumo.org/problems/view/20.html

summ = 1
for i in range(1,101):
    summ *= i
summ1 = 0
for i in str(summ):
    summ1 += int(i)
print(summ1)