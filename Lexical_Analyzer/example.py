# -*- coding: utf-8 -*-
# sample program
# This is a program for a simple guessing game in Python, which we use as a test program

import random

name = input('Hello! What is your name?\n')
guesses_made = 0

number = random.randint(1, 20)
print ('Well ', name,', I am thinking of a number between 1 and 20 ' )

while guesses_made < 6:

    guess = int(input('Take a guess: '))

    guesses_made += 1

    if guess < number:
        print ('Your guess is too low.')

    if guess > number:
        print ('Your guess is too high.')

    if guess == number:
            print ('Good job ' , name, '! You guessed my number in' ,guesses_made , 'guesses!')

            break

else:
    print ('Nope. The number I was thinking is' ,number)