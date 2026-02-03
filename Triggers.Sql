CREATE TABLE admin_users (
id INT PRIMARY KEY auto_increment,
 name VARCHAR(100),
 email VARCHAR(100),
 gender ENUM('Male', 'Female', 'Other'),
 date_of_birth DATE,
 salary INT
);

INSERT INTO admin_users (id, name, email, gender, date_of_birth, salary) VALUES
(101, 'Anil Kumar', 'anil@example.com', 'Male', '1985-04-12', 60000),
(102, 'Pooja Sharma', 'pooja@example.com', 'Female', '1992-09-20', 58000),
(103, 'Rakesh Yadav', 'rakesh@example.com', 'Male', '1989-11-05', 54000),
(104, 'Fatima Begum', 'fatima@example.com', 'Female', '1990-06-30', 62000);
select * from admin_users;

create table user_log(
id int auto_increment PRIMARY KEY,
user_id int,
name varchar(100),
created_on timestamp default current_timestamp
);

delimiter $$ 
create trigger after_user_insert
after insert on admin_users
for each row
begin 
insert into user_log(user_id , name)
VALUES (new.id , new.name);
end $$

delimiter ;

insert into admin_users(name,email,gender ,date_of_birth,salary)
values ("rohan", "aa@gmail.com", 'Male','2000-10-10',70000);

SELECT * FROM admin_users;
SELECT * FROM user_log;
SHOW TRIGGERS;
SHOW TRIGGERS LIKE 'admin_users';
