#Query
#Search the murders in SQL city on 15 Jan 2018 in the list of crimes.
SELECT * from crime_scene_report
where type='murder' and date=20180115 and city='SQL City';

#Result
#date	type	description	city
#20180115	murder	Security footage shows that there were 2 witnesses. 
#The first witness lives at the last house on "Northwestern Dr". 
#The second witness, named Annabel, lives somewhere on "Franklin Ave".	SQL City

#Query
#Search the interviews of these two witnesses.
SELECT person.id, person.name, interview.transcript 
from person left join interview on person.id=interview.person_id
where person.name like 'Annabel';

#Result
#id	name	transcript
#16371	Annabel Miller	I saw the murder happen, and I recognized the killer 
#from my gym when I was working out last week on January the 9th.


#Query
#Interview of the first witness
SELECT person.id, person.name, interview.transcript 
from person left join interview on person.id=interview.person_id
where address_street_name='Northwestern Dr' order by address_number desc limit 1;

#Result
#id	name	transcript
#14887	Morty Schapiro	I heard a gunshot and then saw a man run out. 
#He had a "Get Fit Now Gym" bag. The membership number on the bag started with "48Z". 
#Only gold members have those bags. The man got into a car with a plate that included "H42W".

#Query
#
SELECT get_fit_now_member.name, interview.transcript 
from get_fit_now_member 
left join get_fit_now_check_in on get_fit_now_member.id=get_fit_now_check_in.membership_id
left join interview on get_fit_now_member.person_id=interview.person_id
left join person on interview.person_id=person.id
left join drivers_license on drivers_license.id=person.license_id
where get_fit_now_check_in.check_in_date=20180109 
and get_fit_now_member.membership_status='gold' 
and get_fit_now_member.id like '48Z%'

#Result
#name	transcript
#Jeremy Bowers	I was hired by a woman with a lot of money. 
#I don't know her name but I know she's around 5'5" (65") or 5'7" (67"). 
#She has red hair and she drives a Tesla Model S. 
#I know that she attended the SQL Symphony Concert 3 times in December 2017.

#Query
SELECT p.id, p.name, f.event_name, f.date, income.annual_income
from person p left join drivers_license dl on dl.id=p.license_id
left join facebook_event_checkin f on p.id=f.person_id
left join income on p.ssn=income.ssn
where f.event_name='SQL Symphony Concert' and
dl.hair_color='red' and dl.car_make='Tesla' and dl.car_model='Model S';

#Result
#id	name	event_name	date	annual_income
#99716	Miranda Priestly	SQL Symphony Concert	20171206	310000
#99716	Miranda Priestly	SQL Symphony Concert	20171212	310000
#99716	Miranda Priestly	SQL Symphony Concert	20171229	310000

#Miranda Priestly is the murderer.




