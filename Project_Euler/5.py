# 2520 - самое маленькое число, которое делится без остатка на все числа от 1 до 10.
# Какое самое маленькое число делится нацело на все числа от 1 до 20?
mass_prostie = []
for i in range(2,1001):
    flag = True
    for i1 in range(2, int(i ** 0.5)+1):
        if i%i1==0:
            flag = False
            break
    if flag == True:
        mass_prostie += [i]
print(mass_prostie)
mass_poisk = [i for i in range(1,21)]
print(mass_poisk)
