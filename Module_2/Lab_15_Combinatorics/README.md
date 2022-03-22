![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab 15| Combinatorics

## Introduction


## Getting Started

Create the main.ipynb file with the following challenges:

* Challenge 1. Write a Python program to print all permutations of the string "Ironhack"

        lst=['I', 'R', 'O', 'N', 'H', 'A', 'C', 'K']

        list(itertools.permutations(lst, 8))
        
        
* Challenge 2: How many ways can you choose 3 people from a group of 17 for making the group projects teams?

        17! / (17-3)!*3! = 680


* Challenge 3: Let's imagine you need to organize the business processes in the coffee shop.  You know that each cup can be made from 10 possible ingridients. But it is not profitable to use more than 5 portions of ingridients at once. These ingridients should not be unique (for example, you can put milk twice, and a chocolate onle). How many different variations of coffee you can include to the menu?
        
        (10+5-1)! / 5! * 9! + (10+4-1)!/ 4!*9! + (10+3-1)! / 3!*9! + (10+2-1)!/2! * 9! = 2002 + 715 + 220 + 55 = 2992
        
* Challenge 4: Given an array of distinct integers, return all the possible permutations. You can return the answer in any order. The lenght of array and the integers are given by user and may vary
        
        arr=[4, 7, 6]
        
        list(itertools.permutations(arr, 3))
        [(4, 7, 6), (4, 6, 7), (7, 4, 6), (7, 6, 4), (6, 4, 7), (6, 7, 4)]
        

* Challenge 5: Use intertools library to solve the following problem: Six books are lying on a table in front of you. How many ways can you arrange the books, considering both the left-to-right order of the books and whether they’re set with the front cover facing up or down?
        
        #order of books 
        
        books=['a', 'b', 'c', 'd', 'e', 'f']

        len(list(itertools.permutations(books, 6))) =720
        
        #cover up or down 
        
        pow(2, 6) = 64
        
        720 * 64 = 46080
        
        

## Deliverables- 

`main.ipynb` with your responses.

## Submission

Upon completion, add your deliverables to git. Then commit git and push your branch to the remote.
