USE startersql;
INSERT INTO users (id, name, email)
VALUES
(8,  'Amit',  'amit@gmail.com'),
(9,  'Rohit', 'rohit@gmail.com'),
(12, 'Neha',  'neha@gmail.com'),
(14, 'Pooja', 'pooja@gmail.com'),
(15, 'Rahul', 'rahul@gmail.com'),
(18, 'Kiran', 'kiran@gmail.com')
ON DUPLICATE KEY UPDATE name = name;
DROP TABLE IF EXISTS addresses;

CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    street VARCHAR(100),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),

    -- Foreign key with CASCADE
    CONSTRAINT fk_user
        FOREIGN KEY (user_id)
        REFERENCES users(id)
        ON DELETE CASCADE
);


INSERT INTO addresses (user_id, street, city, state, pincode)
VALUES
(8,  '14 Park Street',        'Kolkata',   'West Bengal',    '700016'),
(9,  '5 North Usman Road',    'Chennai',   'Tamil Nadu',    '600017'),
(12, '17 Hazratganj',         'Lucknow',   'Uttar Pradesh', '226001'),
(14, '55 Banjara Hills',      'Hyderabad', 'Telangana',     '500034'),
(15, '88 Connaught Place',    'Delhi',     'Delhi',         '110001'),
(18, '10 MG Marg',            'Dehradun',  'Uttarakhand',   '248001');

SELECT * FROM users;
SELECT * FROM addresses;

DELETE FROM users WHERE id = 8;

SELECT * FROM users;
SELECT * FROM addresses;
