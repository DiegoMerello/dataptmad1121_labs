"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""
import string
import random

#n = input('How many random strings to generate? ')

def id_generator_min (len1, len2):
    for i in range(len1, len2):
        strings_and_intg_1=string.ascii_lowercase + string.digits
        chars_1=''.join(random.choice(strings_and_intg_1))
    return chars_1

def rand_string(len1, len2, len3):
    rand_list=[]
    for i in range(len3):
        random_string = id_generator_min(len1, len2)
        rand_list.append(random_string)
        return rand_list

len1=input('Enter a minimum string lengt: ')
len2=input('Enter a maximum string lengt: ') 
len3=input('How many random strings to generate? ')  

resultado = rand_string(int(len1), int(len2), int(len3))


print(resultado)    

