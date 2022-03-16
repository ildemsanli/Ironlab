![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)

# Lab | Statistics Foundations
In this lab we are going to put into practice what we learned about the foundations of statistics. You won't need to use Python, just your brain and a little bit of *Markdown*. Hovewer, you will need SQL for the Part 3.

## Your task
Today you'll need to complete the challenges described below.

## Deliverables
You need to submit a markdown file with the solution to the following challenges. You can create a new *.md* file or directly edit the *README.md* to include your solutions.
This file should also include the SQL script for the Part 3.

## Challenges
## Part 1
### Challenge 1
Find a and b, if median=42, mean=50
20,34, 34,  12, 56, 110, 49, a, b.

Since we have 9 numbers, the one in the middle will be median. So a=42.

The sum of these 7 numbers is 315.
We can calculate the sum of 9 numbers using the mean 50 x 9 = 450.

450-315 = 135 so a+b =135

b=135-42=93

  

### Challenge 2
A car hit an average speed of v1 = 60 kmph in the first half of the journey, and hit an average speed of v2 = 110 kmph in the second half of the journey. Determine the average speed of the car.

(60+110)/2=85 kmph

### Challenge 3
The lifetimes of 400 light-bulbs were found to the nearest hour. The results were recorded as
follows.
Lifetime (hours) 0–199 200–399 400–599 600–799 800–999 1000–1199 1200–1999
Frequency         143     97      64      51      14      14        17
Construct a histogram and cumulative frequency polygon for this dataset. Estimate the percentage
of bulbs with lifetime less than 480 hours.


#####The charts are in the folder.

Cumulative frequencies are:

199  399  599  799 ....
143  240  304  355 ....

480/599 = x /304

x= 243.6 is the estimation of the number of bulubs with a lifetime of less than 480 hours. 

243.6/400 x 100 = 60.9% 



### Challenge 4
The time between arrival of 60 patients at an intensive care unit were recorded to the nearest hour.
The data are shown below.
Time (hours) 0–19 20–39 40–59 60–79 80–99 100–119 120–139 140–159 160–179
Frequency     16    13    17    4     4      3       1      1       1
Determine the median, mean and standard deviation for this dataset.

Mean

(8.5 x 16) + (28.5 x 13) + (48.5 x 17) + (68.5 x 4) + (88.5 x 4) +(108.5 x 3) + (128.5 x 1) + (148.5 x 1) + (168.5 x 1)
136 + 370.5 + 824.5 + 274 + 354 + 325.5 + 128.5 + 148.5 + 168.5 = 2730
2730 / 60 = 45.5

Median

Total number is 60. n/2 = 30

30 falls in the third group when we look at cumulative frequencies. SO 40-59 is the median class.

40 + ((30-29)/17) x 19 = 41.12 

Standard Deviation

(8.5-45.5)2+(28.5 -45.5)2+(48.5-45.5)2+(68.5-45.5)2 + (88.5-45.5)2 +(108.5-45.5)2+(128.5 -45.5)2+(148.5- 45.5)2+(168.5 -45.5)2 
total of squares= 1369 + 289+ 9+ 529+ 1849+ 3969+6889+ 10609 +15129= 40641 

divided by n-1 which is 59: 40641/59=688.83

square root of 688.83 = 26.25



## Part 2
### Challenge 1
One player rolls two dices. Describe the measurable space and the random variable for:
* A. The values that the player obtains.
* B. The sum of the values obtained.
* C. The maximum value obtained after rolling both dices.


A.measurable space: 6 x 6 =36, random variable is the side that comes on top
B.measurable space: 6 x 6 /2 =18, random variable is the sum of the values
C.measurable space 

Describe the following events:
* Case A: Both values are greater than 5. 

The probability of one die greater than 5 is 1/6. Both of them 1/6 x 1/6 = 1/36

* Case B: The sum of values is even.

Each die should have an even value for the sum to be even. 1/2 x 1/2 = 1/4

* Case C: The maximum is the value of both rolls.

1/6 x (5/6+ 4/6+ 3/6+2/6 +1/6) = 15/36 

### Challenge 2
One player picks two cards from a poker deck. Describe the measurable space and the random variable for:
* A. The number of figures he picks.
measurable space: 52 x51 
random variable: the card picked

* B. The sum of card values. Consider that the value of figures is 10 and the value of aces is 15.
measurable space: 
random variable: the sum of the cards

* C. The number of hearts or spades he picks.
measurable space: 26 x 25 
random variable: 

Describe the following events:
* Case A: The number of figures in the cards the player picked is two. 
- The probability of first card picked being a figure is 12/52. For the second card 11/51. 
So for the two: 12/52 x 11/51= 132/2652 = 33/663

* Case B: The sum of card values is 17. 
- If one card is Ace, the second one has to be a 2: 4/52 x 4/51
- If one card is a figure, the second has to be a 7: 12/52 x 4/51
- If one card is a 9, the other one has to be an 8: 4/52 x 4/51
So the total probability is the sum of these 3 probabilities: 80/2652 = 20/663 

* Case C: The value of both cards is less than 8.
- Cards from 2 to 7: 24/52 x 23/51 =  138/663

### Challenge 3
Two players roll a dice. Describe the measurable space and the random variable for:
* A. The score of player A.
measurable space: 
random variable: the number that comes on top 

* B. The greatest score.
measurable space: 
random variable: the number that comes on top 

* C. The earnings of player A if the game rules state that:  
"The player with the greatest score gets a coin from the other player.".
measurable space: 
random variable: the number that comes on top 

* D. The earnings of player A if the game rules state that:  
"The player with the greatest score gets as many coins as the difference between the score of player A and player B.". 
measurable space: 
random variable: the difference between the two dice rolls 


Describe the following events:
* Case A: The score of player A is 2.
- 1/6
* Case B: The greatest score is lower or equal than 2.
- 2/6 x 2/6 = 1/3
* Case C: Considering the case where the winner gets as many coins as the difference between scores (D), describe: 
  * Player A wins at least 4 coins.
  - If player B gets 1: 1/6 x 2/6 
  - If player B gets 2: 1/6 x 1/6
  Total is 3/36 = 1/12
  
  * Player A loses more than 2 coins.
  - If player B gets 6: 1/6 x 3/6
  - If player B gets 5: 1/6 x 2/6
  - If player B gets 4: 1/6 x 1/6
  Total is 6/36 = 1/6
  * Player A neither wins nor loses coins.
  -1/6 x 1/6 x 6 = 1/6

## Bonus challenges
### Bonus Challenge 1
Three players take balls from a box. Inside that box there are red, blue, green and black balls. The players can take three balls at mosts with the following rules:

* If the ball is blue, they can take another ball.
* If the ball is green, they get one point and they can take another ball.
* If the ball is red, they can’t take another ball.
* If the ball is black, they lose one point and they can’t take another ball.

Describe the measurable space and the random variable for:
* A. Player A wins. Do not consider ties as a win.
* B. Player A and B get the same points.
* C. All players get 0 points.

### Bonus Challenge 2
Consider the situation of bonus challenge 1 but now with four players. Does anything change in your solutions? What are the changes in each case?

### Bonus Challenge 3
One player takes three balls from a box. Inside the box there are 5 balls: two of them are black and the other three are white. 

Describe the measurable space and the random variable for:
* A. The number of white balls if every time we take a ball we keep it.
* B. The number of white balls if every time we take a ball we put it back again into the box.
* C. The number of black balls if every time we take a ball we keep it.
* D. The number of black balls if every time we take a ball we put it back into the box.

| Attempt | #1 | #2 |
| :---: | :---: | :---: |
| Seconds | 301 | 283 |

## Part 3
### Challenge 1

| #student_id | #score |
| :---------: | :----: |
| 1 | 91 |
| 2 | 72 |
| 3 | 98 |
| 4 | 62 |
| 5 | 62 |
| 6 | 95 |
| 7 | 83 |
| 8 | 86 |
| 9 | 56 |
|10 | 97 |
|11 | 58 |
|12 | 71 |
|13 | 87 |
|14 | 83 |
|15 | 98 |


Please find MEAN, SUM, STANDARD DEVIATION, VARIANCE, MIN and MAX.
