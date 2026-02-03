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

DELIMITER $$
create procedure select_admin_users()
begin
select * from admin_users;
end$$
delimiter ;

call select_admin_users();

DELIMITER $$
CREATE  PROCEDURE ADDuser(
IN p_name VARCHAR(100),
IN p_email varchar(100),
IN p_gender ENUM('Male', 'FEMALE' ,'OTHER'),
IN p_dob DATE,
IN p_salary INT
)

begin 
insert into admin_users(name,email, gender, date_of_birth, salary)
values (p_name, p_email, p_gender, p_dob, p_salary);
select * from admin_users;
end$$
DELIMITER ;
call ADDuser( 'Monika Saini', 'monika@gmail.com','FEMALE','2003-10-13',1200000);

SHOW PROCEDURE STATUS WHERE Db = 'startersql';
