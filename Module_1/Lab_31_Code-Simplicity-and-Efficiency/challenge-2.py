"""
The code below generates a given number of random strings that consists of numbers and 
lower case English letters. You can also define the range of the variable lengths of
the strings being generated.

The code is functional but has a lot of room for improvement. Use what you have learned
about simple and efficient code, refactor the code.
"""

import random

def RandomStringGenerator(l):
    a=['a','b','c','d','e','f','g','h','i','j','k','l','m','n','o','p','q','r','s','t','u','v','w','x','y','z','0','1','2','3','4','5','6','7','8','9']
    s = ''
    for i in  range(l):
        s += random.choice(a)
    return s

def BatchStringGenerator(n, a, b):
    r = []
    for i in range(n):
        if a <= b and b<=12:
            
            c = random.choice(range(a, b+1))
            r.append(RandomStringGenerator(c))
        else:
            import sys
            sys.exit('Incorrect min and max string lengths. Try again.')
        
    return r

a = int(input('Enter minimum string length: '))
b = int(input('Enter maximum string length: '))
n = int(input('How many random strings to generate? '))

print(BatchStringGenerator(n, a, b))
