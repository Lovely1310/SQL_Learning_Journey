USE startersql;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM users WHERE id = 3;
SELECT * FROM users;
DROP TABLE IF EXISTS emp;

CREATE TABLE emp(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gmail VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO emp(id, name, gmail) VALUES
(1, 'Monika Saini', 'monika9899@gmail.com'),
(2, 'lovely', 'lovely@gmail.com'),
(3, 'kajal', 'loely@gmail.com');
SELECT * FROM emp;
ALTER TABLE users DROP INDEX unique_email;
alter table users add constraint unique_email unique (email);
SELECT * FROM users;

