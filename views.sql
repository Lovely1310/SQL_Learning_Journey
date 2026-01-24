
CREATE TABLE users (
    id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(255) NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
INSERT INTO users (first_name, last_name, email, password_hash)
VALUES
('Rahul', 'Sharma', 'rahul@gmail.com', 'abc123'),
('om', 'yadav', 'raul@gmail.com', 'abc1323'),
('kashish', 'kumar', 'rl@gmail.com', 'abc1243'),

('Anita', 'Verma', 'anita@gmail.com', 'xyz456');
update users set password_hash ='asdg' where first_name in ('rahul','om');

select * from users;
create view rich_users as 
select * from users where password_hash ='asdg';
select * from rich_users;
-- views update data on real time , changes to base tables are reflected automatically 
select id,last_name from rich_users;
-- drop view rich_users; drop is used to delete a view
-- views act like saved select queries
