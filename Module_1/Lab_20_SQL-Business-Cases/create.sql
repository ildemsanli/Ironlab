CREATE DATABASE cars;
use cars;

CREATE TABLE cars (ID integer, VIN varchar(20), manufacturer varchar(20), 
model varchar(10), year integer, color varchar(10));

CREATE TABLE customers (ID integer, customer_ID integer, name varchar(20), 
phone_number varchar(20), email varchar(40), address varchar (100), city varchar(10), 
country varchar(20), zipcode varchar(10));

CREATE TABLE salespersons (ID integer, staff_ID integer, name varchar(20), 
store varchar(20));

CREATE TABLE invoices (ID integer, invoice_number integer, date varchar(20), 
car varchar(20), customer varchar(20), salesperson varchar(20));

