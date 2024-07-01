# Простые делители числа 13195 - это 5, 7, 13 и 29.
# Каков самый большой делитель числа 600851475143, являющийся простым числом?

number1 =3
number = 600851475143
while True:
    number1 += 1
    n=0
    for i in range(2,int(number1**0.5)+1):
        if number1%i==0:
            n=1
            break
    if n == 0:
        if number%number1 == 0:
            dfg=number1
    if number1 >= (number**(1/2)):
        break
print(dfg)


