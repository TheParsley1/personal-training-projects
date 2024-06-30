import random
import os
def num_die():
    while True:
        try:
            num_dice = input('Кол-во костей (от 1 до 100): ')
            if num_dice.isdigit() == True :
                num_dice = int(num_dice)
                if 1 <= num_dice <= 100:
                    return num_dice
                else:
                    raise ValueError('От 1 до 100')
            else:
                raise ValueError('Только целое число')

        except ValueError as err:
            print(err)
            print('_'*30)


def roll_dice():
    min_veal_dice = 1
    max_veal_dice = 6
    roll_again = 'y'
    while roll_again.lower() == 'y':
        quantity = num_die()
        sum_number = 0
        print('Выпавшие значения:', end=' ')
        for item in range(0, quantity):
            item = random.randint(min_veal_dice, max_veal_dice)
            sum_number += item
            print(item, end=" ")
        print('')
        print(f"Сумма всех значений: {sum_number}")
        roll_again = input('Кидать заново? y/n ')
        os.system('cls')


if __name__ == '__main__':
   roll_dice()
