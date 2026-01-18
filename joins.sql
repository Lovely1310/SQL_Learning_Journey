use startersql;
DROP TABLE IF EXISTS sql2;
DROP TABLE IF EXISTS sql1;
create table sql1
(id int auto_increment primary key,
name varchar(50)
);
insert into sql1(name) values
( 'Monika_saini'),
('Aarav'),
('lovely');
select * from sql1;
 
 create table sql2
(id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
city varchar(100) not null,

 CONSTRAINT fk_sql1_id
        FOREIGN KEY (user_id)
        REFERENCES sql1(id)
        ON DELETE CASCADE
ON UPDATE CASCADE
);
insert into sql2(user_id, city) values
( 1, 'Mumbai'),
(2, 'delhi'),
(3, 'gurgaon');
select * from sql1;
select * from sql2;

-- inner join

select sql1.name as NAME, sql2.city as CITY, sql2.id as ID from sql1
inner join sql2 on sql1.id = sql2.user_id;

-- left join 
select sql1.name as NAME, sql2.city as CITY, sql2.id as ID from sql1
left join sql2 on sql1.id = sql2.user_id;

SET SQL_SAFE_UPDATES = 0;
UPDATE sql1 SET id = 5 WHERE name = 'Monika_saini';
-- left join 
select sql1.name as NAME, sql2.city as CITY from sql1
left join sql2 on sql1.id = sql2.user_id;

-- Right join 
select sql1.name as NAME, sql2.city as CITY, sql2.id as ID from sql1
Right join sql2 on sql1.id = sql2.user_id;

