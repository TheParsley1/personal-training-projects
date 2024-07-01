# https://euler.jakumo.org/problems/view/14.html

count_max = 0
for n in range(2,1_000_000):
    count = 0
    n1 = n
    while True:
        count += 1
        if n1 % 2 == 0:
            n1 /= 2
        else:
            n1 = 3*n1+1
        if n1 == 1:
            break
    print(n)
    if count > count_max:
        count_max = count
        number_max = n
print(number_max, count_max)