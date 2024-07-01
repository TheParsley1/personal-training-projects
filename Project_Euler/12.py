# https://euler.jakumo.org/problems/view/12.html
i = 0
j = 1
while True:
    count = 0
    i += j
    j += 1
    for i1 in range(1,int(i**0.5)+1):
        if i % i1 == 0:
            count += 2
    if count > 500:
        print(i, count)
        exit()