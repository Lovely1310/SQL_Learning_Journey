CREATE TABLE users (
  id INT IDENTITY(1,1) PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) UNIQUE NOT NULL,
  gender VARCHAR(10),
  date_of_birth DATE,
  created_at DATETIME DEFAULT GETDATE()
);

SELECT * FROM users;
SELECT name, email FROM users;

EXEC sp_rename 'users', 'customers';
EXEC sp_rename 'customers', 'users';

ALTER TABLE users ADD is_active BIT DEFAULT 1;

INSERT INTO users (name, email, gender, date_of_birth)
VALUES ('Monika', 'monika9899@gmail.com', 'Female', '2003-10-13');
SELECT * FROM users;
