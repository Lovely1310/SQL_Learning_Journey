-- Indexes in SQL - are used to speed up data retrieval.
-- automatically created primary key index
-- create
CREATE TABLE EMPLOYEE (
  empId int,
  name varchar(15),
  dept varchar(10)
);

-- insert
INSERT INTO EMPLOYEE(empId,name,dept) VALUES (1, 'Clark', 'Sales');
INSERT INTO EMPLOYEE(empId,name,dept) VALUES (2, 'Dave', 'Accounting');
INSERT INTO EMPLOYEE(empId,name,dept) VALUES (3, 'Ava', 'Sales');
show indexes from EMPLOYEE;
-- select * from employee where name = 'dave' and empId = 2;
create index idx_name on EMPLOYEE(name);
select * from employee where name='ava';

-- important points 
-- indexes slow down insert , update , delete queries & utilize extra disk space because index must be updated 
-- use indexes only when needed (where , join , order by)

-- drop index idx_name on users;

-- show indexes - view current indexes on TABLE
-- create index - create single or multi dimensional indexes
-- drop indexes - remove an indexes
-- use when - query performance on large TABLE is a concern 
-- avoid on - column that are rarely required or always unique
