"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
import string
import random

n = input('How many random strings to generate? ')
chars_1 = input('Enter minimum string length: ')
chars_2= input('Enter maximum string length: ')
def id_generator (n, chars_1, chars_2):
    chars_1=string.ascii_lowercase + string.digits
    chars_2=string.ascii_lowercase + string.digits
    return ''.join(random.choice(chars) for _ in range(n))

print(id_generator(n, chars_1, chars_2))