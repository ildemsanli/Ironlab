![logo_ironhack_blue 7](https://user-images.githubusercontent.com/23629340/40541063-a07a0a8a-601a-11e8-91b5-2f13e4e6b441.png)
# Lab | My first queries

Please, download the file applestore.csv.
Install MySQL/Postgresql on your computer.
Create a database
Upload the file as a new table of your database

Use the *data* table to query the data about Apple Store Apps and answer the following questions: 

**1. What are the different genres?**

select prime_genre from apple group by prime_genre;

**2. Which is the genre with the most apps rated?**

select prime_genre, rating_count_ver from apple order by rating_count_ver DESC limit 1;

**3. Which is the genre with most apps?**

select prime_genre, count(prime_genre) from apple group by prime_genre order by count(prime_genre) desc limit 1;

**4. Which is the one with least?**

select prime_genre, count(prime_genre) from apple group by prime_genre order by count(prime_genre) asc limit 1;


**5. Find the top 10 apps most rated.**

select track_name, rating_count_tot from apple order by rating_count_tot DESC limit 10;



**6. Find the top 10 apps best rated by users.**

select track_name, user_rating from apple order by user_rating DESC limit 10;

**7. Take a look at the data you retrieved in question 5. Give some insights.**

We retrieved the top 10 most rated apps based on total ratings. Facebook, Pandora and Pinterest are the top 3.


**8. Take a look at the data you retrieved in question 6. Give some insights.**

We retrieved a list of 10 apps that are rated 5 by users.

**9. Now compare the data from questions 5 and 6. What do you see?**

There are no common apps in these two lists.

**10. How could you take the top 3 regarding both user ratings and number of votes?**

select track_name, rating_count_tot, user_rating from apple where user_rating=5 order by rating_count_tot DESC limit 3;

**11. Do people care about the price of an app?** Do some queries, comment why are you doing them and the results you retrieve. What is your conclusion?

I first ran the following query to see the ratings of the apps that are for free and results give a range of ratings.

select track_name, user_rating, price, currency, rating_count_tot, prime_genre from apple where price=0 order by user_rating DESC;

I ran the following query to see the price range of the apps that have a user rating of 5. The results show a range of 0 to 8.99 USD.

select track_name, user_rating, price, currency, rating_count_tot from apple where user_rating=5 order by price DESC;

Based on the results of queries above, there is no relationship between the price of the app and its ratings.


## Deliverables 
You need to submit a `.sql` file that includes the queries used to answer the questions above, as well as an `.md` file including your answers. 
