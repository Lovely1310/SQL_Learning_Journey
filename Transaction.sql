use startersql;
set autocommit = 0;
start transaction;
delete from users where id=2;
select * from users;
rollback;
select * from users;
-- commit is used to save changes 
-- rollback - revert changes to the last safe point...only works when set autocommit = 0;

-- primary key in sql  - it is a constraint ...which is uses to identify a unique value. ---it is unique & not null
-- it is a single column or combination of columns
-- you can change the starting value of aut_increment using auto_increment....ex- alter table users auto_increment = 1000;
-- you can have only one primary key but you can have many unique contraints.
