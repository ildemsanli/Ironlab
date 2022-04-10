"""
This is a dumb calculator that can add and subtract whole numbers from zero to five.
When you run the code, you are prompted to enter two numbers (in the form of English
word instead of number) and the operator sign (also in the form of English word).
The code will perform the calculation and give the result if your input is what it
expects.

The code is very long and messy. Refactor it according to what you have learned about
code simplicity and efficiency.
"""

print('Welcome to this calculator!')
print('It can add and subtract whole numbers from zero to five')
a = input('Please choose your first number (zero to five): ')
b = input('What do you want to do? plus or minus: ')
c = input('Please choose your second number (zero to five): ')



dict_a={'zero':0, 'one':1, 'two':2, 'three':3, 'four':4, 'five':5}

if a or c not in dict_a:
    print("I am not able to answer this question. Check your input.")


if b=='plus':
    output=dict_a[a] + dict_a[c]
    for i in dict_a:
        if dict_a[i]==output:
            print(a, 'plus', c, 'equals', i)
            
elif b=='minus':
    if dict_a[a]>=dict_a[c]:
        output=dict_a[a] - dict_a[c]
        for i in dict_a:
            if dict_a[i]==output:
                print(a, 'minus', c, 'equals', i)
    else:
        output=dict_a[c] - dict_a[a]
        for i in dict_a:
            if dict_a[i]==output:
                print(a, 'minus', c, 'equals negative', i)
                
print("Thanks for using this calculator, goodbye :)")

