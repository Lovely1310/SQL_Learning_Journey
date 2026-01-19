use startersql;
drop table if exists admin_users;

create table if not exists admin_users(
id int primary key,
name varchar(100),
email varchar(100),
gender enum('Male', 'Female', 'other'),
date_of_birth date,
salary int
);
INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);
select  name from users
union
select name from admin_users;

select  name from users
union all
select name from admin_users;

-- Using More Than One Column
SELECT name, salary FROM users
UNION
SELECT name, salary FROM admin_users;

SELECT name, 'User' AS role FROM users
UNION
SELECT name, 'Admin' AS role FROM admin_users;

select  name from users
union
select name from admin_users
order by name;

-- Rules of UNION
-- The number of columns and their data types must match in all SELECT
-- statements.
-- UNION removes duplicates by default.
-- UNION ALL keeps duplicates.
