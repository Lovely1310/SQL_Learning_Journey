create database if not exists college;
use college;
create table if not exists users(
Id int auto_increment primary key,
Name varchar(100) Not Null,
Email varchar(100) unique not null,
Gender Enum('Male', 'Female', 'Other'),
D_O_B date
);
-- rename table users to Student;
select * from users;
-- alter table Student add column is_active boolean default true;
-- alter table users drop column D_O_B;
-- alter table users modify column name varchar(150);
-- alter table users modify column Email varchar(100) after id;
select * from users;
TRUNCATE TABLE users;

insert into users values
(1, 'monika9899@gmail', 'Monika',  'Female'),
(2, 'moka999@gmail', 'sham',  'male'),
(3, 'nika989@gmail', 'lovely',  'Female');
select * from users;
-- select name , gender from users where gender <>'Male';
select * from users where gender is not null;
use startersql;
select * from users where date_of_birth between '1990-09-09' and '1999-09-09';
select * from users where gender in ('male','female');
-- select * from users where gender = 'female' and salary >'70000';
select * from users where gender = 'male' or  salary >'70000'order by date_of_birth desc limit 3;
update users set salary = 45000 where id = 1;
update users set salary = 45000, email = 'aarav@gmail.com' where id = 1;
update users set salary = 70000 where id = 5;
update users set name = 'Aisha khan' where email = 'aisha@example.com';
SET SQL_SAFE_UPDATES = 0;
update users set salary=salary+10000 where salary<60000;
select * from users;
