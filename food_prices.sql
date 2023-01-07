use foodprices;

#look at the inside of the table
select * from mother_table;

#check if 'mp_commoditysource' column has any data
select mp_commoditysource from mother_table;

#delete a redundant column
ALTER TABLE mother_table DROP COLUMN mp_commoditysource;

#Confirm
select * from mother_table;

#Rename columns

#adm0_id to country_id
ALTER TABLE mother_table RENAME COLUMN adm0_id to country_id; 

#adm0_name to country_name
ALTER TABLE mother_table RENAME COLUMN adm0_name to country_name; 

#adm1_id to district_id
ALTER TABLE mother_table RENAME COLUMN adm1_id to district_id; 

#adm1_name to district_name
ALTER TABLE mother_table RENAME COLUMN adm1_name to district_name; 

#mp_commodity to source
ALTER TABLE mother_table RENAME COLUMN mp_commodity to source; 

# Change the data types of different columns
ALTER TABLE mother_table modify country_id int;

ALTER TABLE mother_table modify district_id int;

ALTER TABLE mother_table modify mkt_id int;

ALTER TABLE mother_table modify cm_id int;

ALTER TABLE mother_table modify cur_id int;

ALTER TABLE mother_table modify pt_id int;

ALTER TABLE mother_table modify um_id int;

ALTER TABLE mother_table modify mp_price int;

ALTER TABLE mother_table modify mp_price float;

describe mother_table;

#How many countries are in this data set
select count(distinct country_id) from mother_table;
#74 countries

#Show the distinct commodities
select distinct cm_name from mother_table;

#Show the distinct currencies that were used
select distinct cur_name from mother_table;


#How many distinct currencies where used
select count(distinct cur_name) from mother_table;
#61

#Outlook of prices of maize_flour in different years
select * from mother_table where country_name = 'Uganda' AND cm_name = 'Maize flour' order by mp_month AND mp_year ;



#Show the different years in which maize flour was sold in Uganda
select distinct(mp_year) from mother_table where country_name = 'Uganda' AND cm_name = 'Maize flour';
# 8 years 

#Average price of maize flour 
select avg(mp_price) from mother_table where country_name = 'Uganda' AND cm_name = 'Maize flour';
# 1694.10 UGX

#What currency is used in uganda
select cur_name from mother_table where country_name = 'Uganda';
#UGX

#how does the prices of maize vary in Uganda
select stddev(mp_price) from mother_table where country_name = 'Uganda' AND cm_name = 'Maize flour';
#469.14

