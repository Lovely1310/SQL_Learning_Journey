use startersql;
-- alter table users add constraint check_dob check (date_of_birth >='2000-01-10');
select * from users;
select count(*) from users where gender = "female";
select min(salary) as min_salary,max(salary) as max_salary from users;
select sum(salary) as Total_Salary from users;
select avg(salary) as Total_avg_Salary from users;
select gender , avg(salary) as Total_avg_Salary from users group by gender ;
select name, length(name) as name_len from users;
select id , gender , lower(name) as lower from users;
select id , gender , upper(name) as upper from users;
select id , gender , lower(name) as lower , concat(lower(name), " saini")as user_name, year(date_of_birth) as year  from users;
select name , datediff(curdate(),date_of_birth) as days from users;
-- SQL Functions -- helps to analyze transform or summarize data in your tables.
select salary,
round(salary) as rounded,
floor(salary) as floor,
ceil(salary) as ceiled
from users;
select id, mod(id,2) as remainder from users;
select name, gender, if(gender = 'female', 'yes', 'no') as is_female from users;
