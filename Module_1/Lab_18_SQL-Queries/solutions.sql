use apple_db;
SELECT * FROM apple_db.apple;
#Question 1
select prime_genre from apple group by prime_genre;
#Question 2
select prime_genre, rating_count_ver from apple order by rating_count_ver DESC limit 1;
#Question 3
select prime_genre, count(prime_genre) from apple group by prime_genre order by count(prime_genre) desc limit 1;
#Question 4
select prime_genre, count(prime_genre) from apple group by prime_genre order by count(prime_genre) asc limit 1;
#Question 5
select track_name, rating_count_tot from apple order by rating_count_tot DESC limit 10;

#Question6
select track_name, user_rating from apple order by user_rating DESC limit 10;

#Question 10
select track_name, rating_count_tot, user_rating from apple where user_rating=5 order by rating_count_tot DESC limit 3;

#Question 11
select track_name, user_rating, price, currency, rating_count_tot, prime_genre from apple where price=0 order by user_rating DESC;
select track_name, user_rating, price, currency, rating_count_tot from apple where user_rating=5 order by price DESC;
