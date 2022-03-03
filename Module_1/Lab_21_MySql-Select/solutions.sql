SELECT * FROM publications.titles;
use publications;
#Challenge 1
select authors.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname as FIRST_NAME, 
titles.title as TITLE, publishers.pub_name as PUBLISHER
from titleauthor left join authors on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join publishers on titles.pub_id=publishers.pub_id;

#Challenge 2
select AUTHOR_ID, LAST_NAME, FIRST_NAME, PUBLISHER, count(TITLE) as TITLE_COUNT from (
select authors.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname as FIRST_NAME, 
titles.title as TITLE, publishers.pub_name as PUBLISHER
from titleauthor left join authors on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join publishers on titles.pub_id=publishers.pub_id) as tab group by AUTHOR_ID order by TITLE_COUNT desc;

#Challenge 3
select authors.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname as FIRST_NAME, sales.qty as TOTAL
from titleauthor left join authors on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join sales on titles.title_id=sales.title_id order by sales.qty desc limit 3;

#Challenge 4
select authors.au_id as AUTHOR_ID, authors.au_lname as LAST_NAME, authors.au_fname as FIRST_NAME, ifnull(sales.qty, 0) as TOTAL 
from titleauthor left join authors on authors.au_id = titleauthor.au_id
left join titles on titleauthor.title_id = titles.title_id
left join sales on titles.title_id=sales.title_id 
order by sales.qty desc;


